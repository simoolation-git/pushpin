TEMPLATE = lib
CONFIG -= app_bundle
CONFIG += staticlib
QT -= gui
QT *= network testlib
TARGET = pushpin-cpptest
DESTDIR = ../../../target/cpp

cpp_build_dir = $$OUT_PWD/../../../target/cpp

MOC_DIR = $$cpp_build_dir/test-moc
OBJECTS_DIR = $$cpp_build_dir/test-obj

SRC_DIR = $$PWD/..
QZMQ_DIR = $$SRC_DIR/qzmq
RUST_DIR = $$SRC_DIR/../rust

PRE_TARGETDEPS += $$cpp_build_dir/libpushpin-cpp.a

include($$PWD/../../../conf.pri)

INCLUDEPATH += $$SRC_DIR
INCLUDEPATH += $$SRC_DIR/proxy
INCLUDEPATH += $$SRC_DIR/handler
INCLUDEPATH += $$SRC_DIR/runner
INCLUDEPATH += $$QZMQ_DIR/src

DEFINES += NO_IRISNET

INCLUDEPATH += $$RUST_DIR/include

INCLUDES += \
	main.h

SOURCES += \
	$$PWD/httpheaderstest.cpp \
	$$PWD/jwttest.cpp \
	$$PWD/routesfiletest.cpp \
	$$PWD/proxyenginetest.cpp \
	$$PWD/jsonpatchtest.cpp \
	$$PWD/instructtest.cpp \
	$$PWD/idformattest.cpp \
	$$PWD/publishformattest.cpp \
	$$PWD/publishitemtest.cpp \
	$$PWD/handlerenginetest.cpp \
	$$PWD/templatetest.cpp