
# ASSUMES THE FOLLOWING STRUCTURE:

# GMOCK_PATH
#  include
#  lib
#  gtest
#   include
#   lib

isEmpty(GMOCK_PATH){
 error(unable to find googlemock)
 # TODO: add install (PRE_TARGETDEPS) script

}

GTEST_PATH = $${GMOCK_PATH}/gtest

#googletest & googlemock
INCLUDEPATH += $${GMOCK_PATH}/include $${GTEST_PATH}/include
LIBS += -L$${GTEST_PATH}/lib -L$${GMOCK_PATH}/lib -lgmock -lgtest -lpthread
QMAKE_RPATHDIR += $${GMOCK_PATH}/lib $${GTEST_PATH}/lib
