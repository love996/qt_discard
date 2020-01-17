QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++14

QT += network

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32 {
    INCLUDEPATH += D:\code\MID_RV\cpp\tcpclient\third_party\quazip\include D:\code\MID_RV\cpp\tcpclient\third_party\zlib\include
    LIBS += -LC:\Qt\Qt5.12.6\Tools\mingw730_64\opt\bin -LD:\code\MID_RV\cpp\tcpclient\third_party\quazip\lib
    LIBS += -L$$(THIRD_PARTY)\lib
    LIBS += -llibeay32 -lssleay32 -llibssl -llibcrypto -lquazip

}
unix {
    LIBS += -lssl -lcrypto -lcurl -lpthread
}

SOURCES += \
    easyjson.cpp \
    func.cpp \
    httpclient.cpp \
    main.cpp \
    testjson.cpp \
    testslot.cpp \
    testzip.cpp \
    widget.cpp

HEADERS += \
    easyjson.h \
    func.h \
    httpclient.h \
    testjson.h \
    testslot.h \
    testzip.h \
    widget.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
