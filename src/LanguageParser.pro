TEMPLATE = subdirs
SUBDIRS += lib app test \
    lib \
    app \
    test
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt



OTHER_FILES += \
    .qmake.cache
