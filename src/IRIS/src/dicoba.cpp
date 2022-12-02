#include "ros/ros.h"
#include <opencv2/highgui.hpp>
#include <bits/stdc++.h>
#include "std_msgs/String.h"
#include "IRIS/BSTX.h"
#include "IRIS/BSRX.h"
#include <sstream>
#include <cv_bridge/cv_bridge.h>
#include <vector>
#include <stdio.h>
#include <unistd.h>
#include <termios.h>

int xbola, ybola, status, xtujuan, ytujuan, posx, posy, postheta, vx=10, vy=10, vt=10;

void callback1(const IRIS::BSTX::ConstPtr& msg){
   xbola=msg->bola_y;
   ybola=msg->bola_x;
}
void callback2(const IRIS::BSRX::ConstPtr& msg){
   status=msg->status;
   xtujuan=msg->x_tujuan;
   ytujuan=msg->y_tujuan;

}
ros::Publisher pub;
void publish(const ros::TimerEvent &e){
    ros::Rate loop_rate(10);//10 pesan perdetik 
    IRIS::BSTX send;
    while(ros::ok()){

        send.pos_x=posx;
        send.pos_y=posy;
        send.pos_theta=postheta;
        send.v_x=vx;
        send.v_y=vy;
        send.v_theta=vt;
        pub.publish(send);

        if (status==1) {

            send.bola_x=xbola;
            send.bola_y=ybola;
            pub.publish(send);
            
            static struct termios oldt;
            static struct termios newt;
            tcgetattr( STDIN_FILENO, &oldt);           // save old settings
            newt = oldt;
            newt.c_lflag &= ~(ICANON);                 // disable buffering      
            tcsetattr( STDIN_FILENO, TCSANOW, &newt);  // apply new settings

            int c = getchar();  // read character (non-blocking)

            tcsetattr( STDIN_FILENO, TCSANOW, &oldt);  // restore old settings
                if(c == 'w'){
                    posx-=vx;
                }else if (c == 'a')
                {
                    posy-=vy;
                }else if (c == 's')
                {
                    posx+=vx;
                }else if (c == 'd')
                {
                    posy+=vy;
                }else if (c == 'q')
                {
                    postheta-=vt;
                }else if (c == 'e')
                {
                    postheta+=vt;
                }
            
        }

        else if (status==3)
        {
            send.bola_x=xtujuan;
            send.bola_y=ytujuan;
            pub.publish(send);

            if (xtujuan>=posx){
                posx+=vx;
            }
            if (ytujuan>=posy){
                posy+=vy;
            }
            if (xtujuan<posx){
                posx-=vx;
            }
            if (ytujuan<posy){
                posy-=vy;
            }
        }
        

        ros::spinOnce();
        loop_rate.sleep();
    }
}

int main(int argc, char** argv){
    ros::init(argc, argv, "dicoba");
    ros::NodeHandle nh;
    ros::Subscriber sub1 = nh.subscribe("pc2pc_telemetry", 1000, callback1);
    ros::Subscriber sub2 = nh.subscribe("bs2pc_telemetry", 1000, callback2);
    pub = nh.advertise<IRIS::BSTX>("pc2bs_telemetry", 1000);
    ros::Timer rostimer = nh.createTimer(ros::Duration(0.01), publish);
    ros::MultiThreadedSpinner spinner;
    spinner.spin();
    return 0;
}