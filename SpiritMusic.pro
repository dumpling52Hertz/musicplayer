QT       += core gui widgets multimedia sql
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++17
CONFIG += resources_big
# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += "D:/qt/ffmpeg-master-latest-win64-lgpl-shared/ffmpeg-master-latest-win64-lgpl-shared/include"
DEPENDPATH += "D:/qt/ffmpeg-master-latest-win64-lgpl-shared/ffmpeg-master-latest-win64-lgpl-shared/include"
LIBS += -L"D:/qt/ffmpeg-master-latest-win64-lgpl-shared/ffmpeg-master-latest-win64-lgpl-shared/lib"
LIBS += -lavcodec -lavformat -lswresample -lavutil
SOURCES += \
    AddListDialog.cpp \
    InitPlayer.cpp \
    ListItem.cpp \
    MediaDataBase.cpp \
    MiniPlayer.cpp \
    MusicControl.cpp \
    MusicPage.cpp \
    NormalPlayer.cpp \
    ShowPage.cpp \
    WindowFrame.cpp \
    main.cpp

HEADERS += \
    AddListDialog.h \
    InitPlayer.h \
    ListItem.h \
    MediaDataBase.h \
    MiniPlayer.h \
    MusicControl.h \
    MusicPage.h \
    NormalPlayer.h \
    ShowPage.h \
    WindowFrame.h

FORMS += \
    AddListDialog.ui \
    ListItem.ui \
    MiniPlayer.ui \
    MusicPage.ui \
    NormalPlayer.ui \
    ShowPage.ui \
    StartMask.ui \
    WindowFrame.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    logo.rc

RC_FILE += logo.rc

RESOURCES += \
    image.qrc \
    qss.qrc
