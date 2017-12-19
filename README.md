# FeatureCompare
Using opencv3.3.1&amp;C++ to compare ORB、SIFT、SURF、FAST features detect algorithms.

# Environment
OpenCV_Version         : 3.3.1\
Opencv_Contrib_version : 3.3.1\
When you install opencv_contrib for opencv3.3, you may find an error that INTER_LINEAR_EXACT not defined,
don't worry, you should change INTER_LINEAR_EXACT to INTER_LINEAR, then make again. It will work.

OS : Ubuntu 17.04 64 bits.\
Editor : VSCode It is exciting :->

# How to use
```linux
cd ./build
cmake ..
make -j4
../bin/fastFeatures
```

# Hope you will like it  
