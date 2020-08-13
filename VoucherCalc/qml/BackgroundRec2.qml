import QtQuick 2.0
import Felgo 3.0

Rectangle {

    id: root
    // main Rec properties
    property int customWidth
    property int customHeight
    property color customColor
    property real customOpacity: 1

    //CustomText properties
    property string textName: ""
    property int recWidth
    property int recHeight
    property real pixel

    //CustomTextInput properties
    property alias customInputText: textEdit.text

    //property string placeHolder: ""
    signal accepted
    signal textChanged

    //CustomTextOutput properties
    property real outputText
    width: customWidth
    height: customHeight
    color: customColor
    opacity: customOpacity
    Rectangle {
        width: recWidth
        height: recHeight
        color: customColor
        anchors.left: parent.left
        anchors.leftMargin: dp(15)
        anchors.verticalCenter: parent.verticalCenter
        AppText {
            anchors.centerIn: parent
            text: textName
            font.pixelSize: pixel
        }
    }

    //CustomTextInput properties
    Rectangle {
        id: textRec
        width: recWidth
        height: recHeight
        color: "lightgray"
        radius: dp(5)
        anchors.right: parent.right
        anchors.rightMargin: dp(15)
        anchors.verticalCenter: parent.verticalCenter
        AppTextInput {
            id: textEdit
            anchors.fill: parent
            placeholderText: "Price"
            font.pixelSize: pixel
            inputMethodHints: Qt.ImhDigitsOnly
            onTextChanged: {
                root.textChanged()
            }
        }
    }
}
