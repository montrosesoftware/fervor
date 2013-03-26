isEmpty(FV_APP_NAME) {
	warning("Fervor: falling back to application name '$$TARGET'")
	DEFINES += FV_APP_NAME=\\\"$$TARGET\\\"
} else {
	message("Fervor: building for application name '$$FV_APP_NAME'")
	DEFINES += FV_APP_NAME=\\\"$$FV_APP_NAME\\\"
}

isEmpty(FV_APP_VERSION) {
	warning("Fervor: falling back to application version '$$VERSION'")
	DEFINES += FV_APP_VERSION=\\\"$$VERSION\\\"
} else {
	message("Fervor: building for application version '$$FV_APP_VERSION'")
	DEFINES += FV_APP_VERSION=\\\"$$FV_APP_VERSION\\\"
}

DEPENDPATH += "$$PWD"
INCLUDEPATH += "$$PWD"

SOURCES += fervor/fvupdatewindow.cpp \
        fervor/fvupdater.cpp \
        fervor/fvversioncomparator.cpp \
        fervor/fvplatform.cpp \
        fervor/fvignoredversions.cpp \
        fervor/fvavailableupdate.cpp \
        fervor/fvupdateconfirmdialog.cpp

HEADERS += fervor/fvupdatewindow.h \
        fervor/fvupdater.h \
        fervor/fvversioncomparator.h \
        fervor/fvplatform.h \
        fervor/fvignoredversions.h \
        fervor/fvavailableupdate.h \
        fervor/fvupdateconfirmdialog.h

FORMS += fervor/fvupdatewindow.ui \
        fervor/fvupdateconfirmdialog.ui

CODECFORTR = UTF-8
