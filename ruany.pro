TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

include(deployment.pri)
qtcAddDeployment()


win32:CONFIG(release, debug|release): LIBS += -L/usr/local/lib/release/ -lopencv_video -lopencv_superres -lopencv_ocl -lopencv_stitching -lopencv_photo
else:win32:CONFIG(debug, debug|release): LIBS += -L/usr/local/lib/debug/ -lopencv_video -lopencv_superres -lopencv_ocl -lopencv_stitching -lopencv_photo
else:unix: LIBS += -L/usr/local/lib/ -lopencv_video -lopencv_superres -lopencv_ocl -lopencv_stitching -lopencv_photo
INCLUDEPATH += /usr/local/include:/usr/local/include/opencv
DEPENDPATH += /usr/local/include:/usr/local/include/opencv


INCLUDEPATH += /usr/local/include/opencv2
DEPENDPATH += /usr/local/include/opencv2
