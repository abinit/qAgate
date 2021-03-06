#-------------------------------------------------
#
# Project created by QtCreator 2019-04-14T16:23:17
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport

TARGET = qTdep
TEMPLATE = app
CONFIG += c++11
isEmpty(PREFIX) {
 PREFIX = /usr/
}
isEmpty(PREFIX_AGATE) {
 PREFIX_AGATE = /usr/
}
target.path = $$PREFIX/bin
INSTALLS += target

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += HAVE_CONFIG_H

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        qtdep/main_qtdep.cpp \
        qtdep/qtdep.cpp \
    dialogs/mendeleev.cpp \
    tools/atomicdata.cpp \
    tools/distanceunitcombo.cpp \
    tools/energyunitcombo.cpp \
    tools/qcustomplot.cpp \
    tools/qplot.cpp \
    tools/unitcombo.cpp \
    qtdep/qtdepunitcell.cpp \
    tools/typatitemdelegate.cpp \
    tools/doubleitemdelegate.cpp \
    qtdep/qtdepsupercell.cpp \
    qtdep/qtdepoptions.cpp

HEADERS += \
        qtdep/qtdep.h \
    dialogs/mendeleev.h \
    tools/atomicdata.h \
    tools/distanceunitcombo.h \
    tools/energyunitcombo.h \
    tools/qcustomplot.h \
    tools/qplot.h \
    tools/unitcombo.h \
    qtdep/qtdepunitcell.h \
    tools/typatitemdelegate.h \
    tools/doubleitemdelegate.h \
    qtdep/qtdepsupercell.h \
    qtdep/qtdepoptions.h

FORMS += \
        qtdep/qtdep.ui \
    dialogs/mendeleev.ui \
    tools/atomicdata.ui \
    qtdep/qtdepunitcell.ui \
    qtdep/qtdepsupercell.ui \
    qtdep/qtdepoptions.ui
TRANSLATIONS += \
        qtdep/qtdep_fr.ts \
        qtdep/qtdep_it.ts \
        qtdep/qtdep_de.ts

INCLUDEPATH += $$PREFIX_AGATE/include/agate

RESOURCES += \
    qtdep/qtdep.qrc

unix|win32: LIBS += -L$$PREFIX_AGATE/lib/ -lagate

DISTFILES += \
    qtdep/qtdep.svg \
    qtdep/qtdep.desktop

logo.files = qtdep/qtdep.svg
logo.path = $$PREFIX/share/qAgate/images/

desktop.files= qtdep/qtdep.desktop
desktop.path = $$PREFIX/share/applications/

ICON = qtdep/qtdep.svg

unix:INSTALLS += logo desktop
