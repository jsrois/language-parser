#-------------------------------------------------
#
# Project created by QtCreator 2015-07-27T20:53:03
#
#-------------------------------------------------

CONFIG -= qt
TARGET = langparser
TEMPLATE = lib

DEFINES += LPARSER_LIBRARY

include($$LIBRARY_FILES)
include($$COPYFILES_SCRIPT)

DESTDIR = $$BUILD_PATH/lib
copyFiles(tokenizer.h,$$BUILD_PATH/include)



