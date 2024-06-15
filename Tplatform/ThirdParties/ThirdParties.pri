#Mqtt
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/Mqtt/lib/ -lQt5Mqtt
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/Mqtt/lib/ -lQt5Mqttd
else:unix: LIBS += -L$$PWD/../ThirdParties/Mqtt/lib/ -lQt5Mqtt

INCLUDEPATH += $$PWD/../ThirdParties/Mqtt/include
DEPENDPATH += $$PWD/../ThirdParties/Mqtt/include

#spdlog
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/spdlog/lib/ -lspdlog
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/spdlog/lib/ -lspdlogd

INCLUDEPATH += $$PWD/../ThirdParties/spdlog/include
DEPENDPATH += $$PWD/../ThirdParties/spdlog/include

#CommonLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/CommonLib/lib/ -lCommonLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/CommonLib/lib/ -lCommonLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/CommonLib/lib/ -lCommonLib

CONFIG(debug, debug|release) {
    CommonLib_dll.files = $$PWD/CommonLib/lib/CommonLibd.dll
    CommonLib_dll.path = $$OUT_PWD/debug
}else {
    CommonLib_dll.files = $$PWD/CommonLib/lib/CommonLib.dll
    CommonLib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/CommonLib/include
DEPENDPATH += $$PWD/CommonLib/include

#TCommonLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLib

CONFIG(debug, debug|release) {
    TCommonLib_dll.files = $$PWD/TCommonLib/lib/TCommonLibd.dll
    TCommonLib_dll.path = $$OUT_PWD/debug
}else {
    TCommonLib_dll.files = $$PWD/TCommonLib/lib/TCommonLib.dll
    TCommonLib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/TCommonLib/include
DEPENDPATH += $$PWD/TCommonLib/include

#MCtrlCommFuncLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/MCtrlCommFuncLib/lib/ -lMCtrlCommFuncLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/MCtrlCommFuncLib/lib/ -lMCtrlCommFuncLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/MCtrlCommFuncLib/lib/ -lMCtrlCommFuncLib

CONFIG(debug, debug|release) {
    MCtrlCommFuncLib_dll.files = $$PWD/MCtrlCommFuncLib/lib/MCtrlCommFuncLibd.dll
    MCtrlCommFuncLib_dll.path = $$OUT_PWD/debug
}else {
    MCtrlCommFuncLib_dll.files = $$PWD/MCtrlCommFuncLib/lib/MCtrlCommFuncLib.dll
    MCtrlCommFuncLib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/../ThirdParties/MCtrlCommFuncLib/include
DEPENDPATH += $$PWD/../ThirdParties/MCtrlCommFuncLib/include

COPIES += CommonLib_dll \
          TCommonLib_dll \
          MCtrlCommFuncLib_dll

