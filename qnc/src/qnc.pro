
VERSION = 0.05

QT += core gui

TARGET = qnc
TEMPLATE = app
# RESOURCES = binview.qrc

win32{
    OPERATINGSYSTEM = win32
#    RC_FILE = binview.rc
}

macx{
    OPERATINGSYSTEM = osx
#    ICON = resources/binview.icns
    CONFIG -= app_bundle
}

unix:!macx{
    OPERATINGSYSTEM = lnx
}

CONFIG(release, release|debug){
    BUILDTYPE = release
}

CONFIG(debug, release|debug){
    BUILDTYPE = debug
}

DESTDIR = ./../bin/$${OPERATINGSYSTEM}/$${BUILDTYPE}
OBJECTS_DIR = ./../obj/$${OPERATINGSYSTEM}/$${BUILDTYPE}
MOC_DIR = ./../obj/$${OPERATINGSYSTEM}/$${BUILDTYPE}
UI_DIR = ./../obj/$${OPERATINGSYSTEM}/$${BUILDTYPE}
RCC_DIR = ./../obj/$${OPERATINGSYSTEM}/$${BUILDTYPE}

message(Qt:      $${QT_VERSION})
message(Version: $${VERSION})
message(OS:      $${OPERATINGSYSTEM})
message(Build:   $${BUILDTYPE})
message(Output:  $${DESTDIR}/$${TARGET})

SOURCES += main.cpp\
        mainwindow.cpp \
    terminalinputwidget.cpp \
    terminaloutputwidget.cpp \
    qxsysteminfo.cpp \
    directorywidget.cpp \
    directoryview.cpp \
    directoryinfo.cpp \
    utils.cpp \
    textpainter.cpp \
    createdirectorydialog.cpp

HEADERS  += mainwindow.h \
    terminalinputwidget.h \
    terminaloutputwidget.h \
    qxsysteminfo.h \
    directorywidget.h \
    directoryview.h \
    directoryinfo.h \
    utils.h \
    textpainter.h \
    createdirectorydialog.h

FORMS    += mainwindow.ui \
    createdirectorydialog.ui
