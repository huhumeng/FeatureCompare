/*
 * @Author: yong.ling 
 * @Date: 2017-12-18 19:58:12 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2017-12-18 21:06:36
 * @Description:        This file is to compare some feature detect algorithm.
 * @Work Environment:   Ubuntu 17.4 & OpenCV3.3.0 & VSCode
 */
#include <iostream>

//opencv 头文件，其中features2d.hpp是使用FastFeature的必要条件
#include <opencv2/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>

//FAST、ORB头文件 
#include <opencv2/features2d.hpp> 

//SIFT、SURF头文件
#include <opencv2/xfeatures2d.hpp>

//计时头文件
#include <sys/time.h>
#include <time.h>

//命名空间定义
using namespace cv;
using namespace std;

//计时函数，实现毫秒级的计时
double get_wall_time()  
{  
    struct timeval time ;  
    if (gettimeofday(&time,NULL)){  
        return 0;  
    }  
    return (double)time.tv_sec + (double)time.tv_usec * .000001;  
}  

int main(int argc,char* argv[])
{

    //记录开始时间
    double start_time = get_wall_time(); 
    
    //【1.0】 Read in src Image
    Mat srcImage = imread("../../source/lenna.png");
    Mat srcGrayImage;
    if (srcImage.channels() == 3)
    {
        cvtColor(srcImage,srcGrayImage,CV_BGR2GRAY);
    }
    else
    {
        srcImage.copyTo(srcGrayImage);
    }

    //【2.0】 创建KeyPoint向量 KeyPoint类的主要的属性有坐标、邻域直径、方向、相应强度、金字塔所在组、用于聚类的id等。
    vector<KeyPoint> detectKeyPoint;
    
    //【3.0】 创建一个Fast算子，完成特征检测，阈值设置成40，并且采用了抑制非极大值（默认）
    // 函数原型：static Ptr< FastFeatureDetector > create( int threshold=10,
    //                                                   bool nonmaxSuppression=true,
    //                                                   int type=FastFeatureDetector::TYPE_9_16)
    //Ptr<FastFeatureDetector> fast = FastFeatureDetector::create(40);
    //fast->detect(srcGrayImage,detectKeyPoint);

    //【3.1】 创建一个SIFT算子，完成特征检测，create原型为
    //static Ptr< SIFT > 	create (int nfeatures=0, int nOctaveLayers=3,
    //                              double contrastThreshold=0.04, double edgeThreshold=10, double sigma=1.6) 
    // Ptr<xfeatures2d::SIFT> sift = xfeatures2d::SIFT::create();
    // sift->detect(srcGrayImage, detectKeyPoint);

    //【3.2】 创建一个SURF算子，完成特征检测，函数原型为：
    //static Ptr<SURF> cv::xfeatures2d::SURF::create 	( 	double  	hessianThreshold = 100,
	//	                                                    int  	    nOctaves = 4,
	//	                                                    int  	    nOctaveLayers = 3,
	//	                                                    bool  	    extended = false,
	//	                                                    bool  	    upright = false 
	//) 	
    //Ptr<xfeatures2d::SURF> surf = xfeatures2d::SURF::create(800);
    //surf->detect(srcGrayImage, detectKeyPoint);

    //【3.3】 创建一个ORB算子，完成特征检测，函数原型为
    //static Ptr< ORB >   create (  int nfeatures=500, 
    //                              float scaleFactor=1.2f, 
    //                              int nlevels=8, 
    //                              int edgeThreshold=31, 
    //                              int firstLevel=0, 
    //                              int WTA_K=2, 
    //                              int scoreType=ORB::HARRIS_SCORE, 
    //                              int patchSize=31, 
    //                              int fastThreshold=20)
    Ptr<ORB> orb = ORB::create(800);
    orb->detect(srcGrayImage, detectKeyPoint);

    // 程序结束
    double end_time = get_wall_time(); 
    cout<<"程序耗时为:"<<end_time-start_time<<"ms"<<endl; 

    // 【4.0】 绘制特征点
    //  函数原型为
    //  void drawKeypoints( const Mat& image, const vector<KeyPoint>& keypoints, CV_OUT Mat& outImage,  
    //                           const Scalar& color=Scalar::all(-1), int flags=DrawMatchesFlags::DEFAULT ); 
    //  默认为随机彩色的特征点，并且只绘制坐标点，而若flags=DrawMatchesFlags::DRAW_RICH_KETPOINTS会绘制出带方向的圆形 
    Mat keyPointImage;
    drawKeypoints(srcImage,detectKeyPoint,keyPointImage,Scalar::all(-1),DrawMatchesFlags::DRAW_RICH_KEYPOINTS);
    
    // 【5.0】 显示结果并保存
    namedWindow("keyPoint image",CV_WINDOW_NORMAL);
    imshow("keyPoint image",keyPointImage);
 
    imwrite("../result/out00.jpg",keyPointImage);
    
    // 【6.0】 退出程序
    waitKey(0);
    return 0;
}