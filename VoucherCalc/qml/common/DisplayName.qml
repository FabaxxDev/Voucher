import QtQuick 2.0
import Felgo 3.0

Rectangle {

    id: root
    property string displayText
    property string placeHolderText
    property alias text: textEdit.text

    signal texxtChanged
    width: parent.width
    height: dp(40)
    color: "white"

    AppText {
        text: displayText
        font.pixelSize: sp(20)
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: dp(10)
    }

    AppTextField {
        id: textEdit
        width: dp(parent.width * 0.45)
        //Layout.preferredWidth: dp(parent.width * 0.45)
        showClearButton: true
        font.pixelSize: sp(14)
        borderColor: Theme.tintColor
        borderWidth: !Theme.isAndroid ? dp(2) : 0
        anchors.right: parent.right
        anchors.rightMargin: dp(10)
        anchors.verticalCenter: parent.verticalCenter
        placeholderText: placeHolderText
        onTextChanged: {
            root.texxtChanged()
        }
    }
}
