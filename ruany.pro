TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

include(deployment.pri)
qtcAddDeployment()

LIBS += "/usr/local/lib/*.dylib"

INCLUDEPATH += /usr/local/include
DEPENDPATH += /usr/local/include


INCLUDEPATH += /usr/local/include/opencv
DEPENDPATH += /usr/local/include/opencv


INCLUDEPATH += /usr/local/include/opencv2
DEPENDPATH += /usr/local/include/opencv2
