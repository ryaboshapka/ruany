// Example showing how to read and write images
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv/cvaux.hpp>

//#include<opencv2/core/core.hpp>
//#include<opencv2/imgproc/imgproc.hpp>
//#include<opencv2/highgui/highgui.hpp>

int main(int argc, char** argv)
{
    IplImage * pInpImg = 0;

    // Load an image from file - change this based on your image name
    pInpImg = cvLoadImage("/Users/abricos/Desktop/kedyaev.jpg", CV_LOAD_IMAGE_UNCHANGED);
    if(!pInpImg)
    {
        fprintf(stderr, "failed to load input image\n");
        return -1;
    }

    // Write the image to a file with a different name,
    // using a different image format -- .png instead of .jpg
    if( !cvSaveImage("/Users/abricos/Desktop/kedyaev2.png", pInpImg) )
    {
        fprintf(stderr, "failed to write image file\n");
    }

    // Remember to free image memory after using it!
    cvReleaseImage(&pInpImg);

    return 0;
}
