#-------------------------------------------------
#
# Project created by QtCreator 2015-08-11T15:01:48
#
#-------------------------------------------------

QT       += core gui

TARGET = bullet
TEMPLATE = lib
CONFIG += plugin

include("../../common.pri")
include("dependencies.pri")

DESTDIR = $$[QT_INSTALL_PLUGINS]/generic

SOURCES += \
    bulletfactory.cpp \
    bodies/boxshape.cpp \
    #bodies/compoundshape.cpp \
    bodies/convexhullshape.cpp \
    bodies/heightfield2d.cpp \
    bodies/motionstate.cpp \
    bodies/sphereshape.cpp \
    bodies/abstractbody.cpp \
    worlds/world.cpp

HEADERS += \
    bulletfactory.h \
    bodies/boxshape.h \
    #bodies/compoundshape.h \
    bodies/convexhullshape.h \
    bodies/heightfield2d.h \
    bodies/motionstate.h \
    bodies/sphereshape.h \
    bodies/abstractbody.h \
    worlds/world.h
DISTFILES += bullet.json \


LIBS += -lQtPhysicsUnofficialBackend

INCLUDEPATH += $${BULLET_INCLUDE_PATH}
LIBS += $${BULLET_LIBS_PATH}