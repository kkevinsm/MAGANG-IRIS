#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <iostream>
#include <vector>

using namespace std;
using namespace cv;


int main(int argc, char** argv)
{
    VideoCapture video ("/home/kkevinsm/internship_iris/plastik(1).mkv");

    Mat image, threshplastik, color, bola, plastik, erplastik, dilplastik, erbola, dilbola, center;

    Mat element = getStructuringElement(
        MORPH_ELLIPSE, Size(10,6), Point(-1,-1)
    );

    while(1)
    {
        video >> image;
        cvtColor(image,color,COLOR_BGR2HSV);
        inRange(color,Scalar(0,72,0),Scalar(155,255,255),plastik);
        inRange(color,Scalar(0,100,12),Scalar(15,255,255),bola);
        threshold(plastik,threshplastik,118,255,THRESH_BINARY_INV);

        erode(threshplastik,erplastik,element,Point(-1,-1),1);
        erode(bola,erbola,element,Point(-1,-1),1);
        dilate(erplastik,dilplastik,element,Point(-1,-1),1);
        dilate(erbola,dilbola,element,Point(-1,-1),1);

        vector<vector<Point>> contoursa;
        vector<Vec4i> hierarchy;
        vector<vector<Point>> contoursb;
        vector<Vec4i> hierarchyb;

        findContours(dilplastik,contoursa,hierarchy,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE);
        findContours(dilbola,contoursb,hierarchyb,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE);

        for (size_t i=0; i<contoursa.size(); i++)
        {
            drawContours(image,contoursa,(int)0,Scalar(0,0,0),2,LINE_8,hierarchy,0);
        }

        for( size_t i=0; i<contoursb.size(); i++ )
        {
        RotatedRect r = minAreaRect(contoursb[0]);
        cout<<"(X, Y)"<<r.center<<endl;
        double luas=contourArea(contoursb[0]);
       
        putText(image,to_string(i),Point(330,37),1,1,Scalar(0,255,255),1); 
        circle(image,r.center,2,Scalar(0,255,255),1,FILLED);
        drawContours(image, contoursb, (int)i, Scalar(0,255,255), 1, LINE_8, hierarchyb, 0);
        cout<<boundingRect(contoursb[0])<<endl;
        Rect kotak = boundingRect(contoursb[0]);
        

            Point2f c;
            float rad,coba;
            minEnclosingCircle(contoursb[0],c,rad);
            
            coba=pointPolygonTest(contoursa[0],r.center,true);
            
            if(coba>=0||-coba<=rad){

                rectangle (image, kotak, Scalar(0,255,0),2);
                putText(image,"Bola Masuk",Point(12,37),FONT_HERSHEY_DUPLEX, 1,Scalar(0,255,0),2);
                

            }else{

                rectangle (image, kotak, Scalar(0,0,255),2);
                putText(image,"Bola Keluar",Point(12,37),FONT_HERSHEY_DUPLEX, 1,Scalar(0,0,255),2);
                
                
                }
        }

        // imshow("color",color);
        imshow("Dilation Bola",dilbola);
        imshow("Dilation Plastik",dilplastik);
        imshow("Video Asli",image);
        waitKey(17);

        }

    }


