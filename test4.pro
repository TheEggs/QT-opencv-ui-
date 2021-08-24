

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = test4
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

INCLUDEPATH +=D:\opencv\build\include
INCLUDEPATH +=D:\opencv\build\include\opencv
INCLUDEPATH +=D:\opencv\build\include\opencv2



win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../opencv/build/x64/vc14/lib/ -lopencv_world340
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../opencv/build/x64/vc14/lib/ -lopencv_world340d

INCLUDEPATH += $$PWD/../../../opencv/build/x64/vc14
DEPENDPATH += $$PWD/../../../opencv/build/x64/vc14
