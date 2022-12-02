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

int main(int argc, char** argv){

    cv::Mat img=cv::imread("/home/kkevinsm/finalproject_iris/src/IRIS/img/position 3.jpeg");
    cv::Mat resized, color, bola, erbola, dilbola;

    cv::resize(img,resized,cv::Size(900,600),cv::INTER_LINEAR);
    cv::cvtColor(resized,color,cv::COLOR_BGR2HSV);
    cv::inRange(color,cv::Scalar(0,100,12),cv::Scalar(15,255,255),bola);
    cv::Mat element = cv::getStructuringElement(cv::MORPH_ELLIPSE, cv::Size(10,6), cv::Point(-1,-1));//erode dilate dengan pendekatan bentuk elips
    cv::erode(bola,erbola,element,cv::Point(-1,-1),1);
    cv::dilate(erbola,dilbola,element,cv::Point(-1,-1),1);

    std::vector<std::vector<cv::Point>> contoursb;
    std::vector<cv::Vec4i> hierarchyb;

    cv::findContours(dilbola,contoursb,hierarchyb,cv::RETR_EXTERNAL,cv::CHAIN_APPROX_SIMPLE);

    cv::RotatedRect r = cv::minAreaRect(contoursb[0]);
    
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