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
    commonlib_dll.files = $$PWD/CommonLib/bin/CommonLibd.dll
    commonlib_dll.path = $$OUT_PWD/debug
}else {
    commonlib_dll.files = $$PWD/CommonLib/bin/CommonLib.dll
    commonlib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/CommonLib/include
DEPENDPATH += $$PWD/CommonLib/include

#TCommonLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/TCommonLib/lib/ -lTCommonLib

CONFIG(debug, debug|release) {
    tcommonlib_dll.files = $$PWD/TCommonLib/bin/TCommonLibd.dll
    tcommonlib_dll.path = $$OUT_PWD/debug
}else {
    tcommonlib_dll.files = $$PWD/TCommonLib/bin/TCommonLib.dll
    tcommonlib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/TCommonLib/include
DEPENDPATH += $$PWD/TCommonLib/include

#GUIComponentLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/GUIComponentLib/lib/ -lGUIComponentLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/GUIComponentLib/lib/ -lGUIComponentLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/GUIComponentLib/lib/ -lGUIComponentLib

CONFIG(debug, debug|release) {
    guicomponentlib_dll.files = $$PWD/GUIComponentLib/bin/GUIComponentLibd.dll
    guicomponentlib_dll.path = $$OUT_PWD/debug
}else {
    guicomponentlib_dll.files = $$PWD/GUIComponentLib/bin/GUIComponentLib.dll
    guicomponentlib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/GUIComponentLib/include
DEPENDPATH += $$PWD/GUIComponentLib/include

#CommonFunctionLib
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../ThirdParties/CommonFunctionLib/lib/ -lCommonFunctionLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../ThirdParties/CommonFunctionLib/lib/ -lCommonFunctionLibd
else:unix: LIBS += -L$$PWD/../ThirdParties/CommonFunctionLib/lib/ -lCommonFunctionLib

CONFIG(debug, debug|release) {
    commonfunctionlib_dll.files = $$PWD/CommonFunctionLib/bin/CommonFunctionLibd.dll
    commonfunctionlib_dll.path = $$OUT_PWD/debug
}else {
    commonfunctionlib_dll.files = $$PWD/CommonFunctionLib/bin/CommonFunctionLib.dll
    commonfunctionlib_dll.path = $$OUT_PWD/release
}

INCLUDEPATH += $$PWD/CommonFunctionLib/include
DEPENDPATH += $$PWD/CommonFunctionLib/include

COPIES += commonlib_dll \
          tcommonlib_dll \
          guicomponentlib_dll \
          commonfunctionlib_dll
