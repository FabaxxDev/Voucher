# allows to add DEPLOYMENTFOLDERS and links to the Felgo library and QtCreator auto-completion
CONFIG += felgo

# uncomment this line to add the Live Client Module and use live reloading with your custom C++ code
# for the remaining steps to build a custom Live Code Reload app see here: https://felgo.com/custom-code-reload-app/
# CONFIG += felgo-live

# Project identifier and version
# More information: https://felgo.com/doc/felgo-publishing/#project-configuration
PRODUCT_IDENTIFIER = com.FabaxxDev.VoucherCalculator
PRODUCT_VERSION_NAME = 1.0.0
PRODUCT_VERSION_CODE = 1

# Optionally set a license key that is used instead of the license key from
# main.qml file (App::licenseKey for your app or GameWindow::licenseKey for your game)
# Only used for local builds and Felgo Cloud Builds (https://felgo.com/cloud-builds)
# Not used if using Felgo Live
PRODUCT_LICENSE_KEY = "91B10BA78D9ACE12A20B4643C82F1F514CC2EABC2829C37F3CDBD8674A619CBF08EDF74F66F462913C9DA6FD0FCF0C0F2090FA313FD06CDF8947D172579F2904BA177057CEB8546F7B03457DB7E7B07A24F2BF7D0EF74FDE31881ED67B4017509A332DE128EC6EF18F3505E2FA7B0489DD39C79C9F69B517A69CFE5082DAAED985F8F04A8A67ACE71DF0EEB0BEE160492D1C0E308698C1CF762094A5E0615E705056B9BC9A79D6DA3DF7750E46EC716B82D707D92B1C1C6EABB7DA8AF24ED9AED60374D8E928A3DD12123D337E69FC328C13CFFDABB853385F2D4BCF4CA85DF2C86BE291E583EAA838EB7AE428EF2F683F81C3E5CFEF3B686AA4D435EC5FEB22522A2BD5A9D07D7703E5DAE9EB0C77F6099BAA1C47567A8694C111F0E0499C7A3F1A13C826B9994D9E3A57B45E1A7D8E13D06830348E48F95EED963528117276D2FA14D88EFDE2A7277E54B8401C1CF3"

qmlFolder.source = qml
#DEPLOYMENTFOLDERS += qmlFolder # comment for publishing

assetsFolder.source = assets
DEPLOYMENTFOLDERS += assetsFolder

# Add more folders to ship with the application here

 RESOURCES += resources.qrc # uncomment for publishing

# NOTE: for PUBLISHING, perform the following steps:
# 1. comment the DEPLOYMENTFOLDERS += qmlFolder line above, to avoid shipping your qml files with the application (instead they get compiled to the app binary)
# 2. uncomment the resources.qrc file inclusion and add any qml subfolders to the .qrc file; this compiles your qml files and js files to the app binary and protects your source code
# 3. change the setMainQmlFile() call in main.cpp to the one starting with "qrc:/" - this loads the qml files from the resources
# for more details see the "Deployment Guides" in the Felgo Documentation

# during development, use the qmlFolder deployment because you then get shorter compilation times (the qml files do not need to be compiled to the binary but are just copied)
# also, for quickest deployment on Desktop disable the "Shadow Build" option in Projects/Builds - you can then select "Run Without Deployment" from the Build menu in Qt Creator if you only changed QML files; this speeds up application start, because your app is not copied & re-compiled but just re-interpreted


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp


android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
    OTHER_FILES += android/AndroidManifest.xml       android/build.gradle
}

ios {
    QMAKE_INFO_PLIST = ios/Project-Info.plist
    OTHER_FILES += $$QMAKE_INFO_PLIST
}

# set application icons for win and macx
win32 {
    RC_FILE += win/app_icon.rc
}
macx {
    ICON = macx/app_icon.icns
}

RESOURCES += \
    resources.qrc
