include(qmlapplicationviewer/qmlapplicationviewer.pri)
SOURCES += main.cpp
HEADERS += defines.h
OTHER_FILES += qml/Element/Element.qml qml/main.qml
win32: RC_FILE += qml.rc
