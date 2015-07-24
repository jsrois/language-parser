TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    tokenizer.cpp

HEADERS += \
    tokenizer.h


# With C++11 support
greaterThan(QT_MAJOR_VERSION, 4){
message("Qt version >4")
CONFIG += c++11
} else {
QMAKE_CXXFLAGS += -std=c++0x
}
