#include "ros/ros.h"
#include <opencv2/highgui.hpp>
#include <bits/stdc++.h>
#include "std_msgs/String.h"
#include "IRIS/BSTX.h"
#include "IRIS/BSRX.h"
#include <sstream>
#include <cv_bridge/cv_bridge.h>
#include <unistd.h>
#include <vector>
#include <termios.h>
#include <stdio.h>

using namespace std;
using namespace cv;

int main(int argc, char** argv){

    Mat img=imread("/home/kkevinsm/finalproject_iris/src/IRIS/img/position 3.jpeg");
    Mat resized, color, bola, erbola, dilbola;

    resize(img,resized,Size(900,600),INTER_LINEAR);
    cvtColor(resized,color,COLOR_BGR2HSV);
    inRange(color,Scalar(0,100,12),Scalar(15,255,255),bola);
    Mat element = getStructuringElement(MORPH_ELLIPSE, Size(10,6), Point(-1,-1));//erode dilate dengan pendekatan bentuk elips
    erode(bola,erbola,element,Point(-1,-1),1);
    dilate(erbola,dilbola,element,Point(-1,-1),1);

    vector<vector<Point>> contoursb;
    vector<Vec4i> hierarchyb;

    findContours(dilbola,contoursb,hierarchyb,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE);

    RotatedRect r = minAreaRect(contoursb[0]);
    
    ros::init(argc, argv, "cobain");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<IRIS::BSTX>("pc2pc_telemetry", 1000);

    ros::Rate loop_rate(10);
    
    while(ros::ok()){
        IRIS::BSTX data;

        data.bola_x = r.center.x;
        data.bola_y = r.center.y;
        pub.publish(data);

        ros::spinOnce();
        loop_rate.sleep();
        // cout<<data.bola_x<<endl;
        // cout<<data.bola_y<<endl;
    }

}