import QtQuick 2.0
import Felgo 3.0

Rectangle {

    id: root
    // main Rec properties
    property int customWidth: parent.width
    property int customHeight: dp(40)
    property color customColor
    property real customOpacity: 1

    //CustomText properties
    property string textName: ""
    property int recWidth: dp(parent.width * 0.2)
    property int recHeight: dp(30)
    property real pixel: sp(15)

    //CustomTextInput properties
    property alias customInputText: textEdit.text

    //property string placeHolder: ""
    signal accepted
    signal textChanged
    signal clicked

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
        anchors.leftMargin: dp(13)
        anchors.verticalCenter: parent.verticalCenter
        AppText {
            anchors.centerIn: parent
            text: textName
            font.pixelSize: pixel
        }
    }

    //CustomTextInput properties
    MouseArea {
        anchors.fill: parent
        onClicked: textEdit.focus = false
    }

    Rectangle {
        //id: textRec
        //        width: recWidth
        //        height: recHeight
        anchors.fill: textEdit
        color: "lightgray"
        radius: dp(5)
        //anchors.centerIn: parent
    }

    AppTextInput {
        id: textEdit
        width: recWidth
        height: recHeight
        //        width: parent.width
        //        height: parent.height
        anchors.centerIn: parent
        placeholderText: "Quantity"
        font.pixelSize: pixel
        inputMethodHints: Qt.ImhDigitsOnly

        onEditingFinished: {
            root.textChanged()
        }
    }

    //CustomTextOutput properties
    Rectangle {
        width: recWidth
        height: recHeight
        color: "lightgray"
        radius: dp(5)
        anchors.right: parent.right
        anchors.rightMargin: dp(13)
        anchors.verticalCenter: parent.verticalCenter

        AppText {
            anchors.left: parent.left
            anchors.leftMargin: dp(5)
            anchors.verticalCenter: parent.verticalCenter
            text: outputText
            font.pixelSize: pixel
        }
    }
}
