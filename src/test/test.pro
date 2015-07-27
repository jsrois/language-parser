TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.9

SOURCES += \
    main.test.cpp \
    tokenizer.test.cpp

include(include_gmock.pri)
VPATH += $${SOURCE_PATH}
include($$LIBRARY_FILES)

