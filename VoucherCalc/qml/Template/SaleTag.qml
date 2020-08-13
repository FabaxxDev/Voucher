import QtQuick 2.0
import Felgo 3.0
import "../"

Rectangle {
    property int pixel: sp(15)

    width: parent.width
    height: dp(30)
    color: "lightgray"
    Rectangle {
        width: dp(parent.width * 0.2)
        height: dp(25)
        color: "lightgray"
        anchors.left: parent.left
        anchors.leftMargin: dp(15)
        anchors.verticalCenter: parent.verticalCenter

        AppText {
            anchors.centerIn: parent
            text: "Network"
            font.pixelSize: pixel
        }
    }

    Rectangle {
        width: dp(parent.width * 0.2)
        height: dp(25)
        color: "lightgray"
        anchors.centerIn: parent

        AppText {
            anchors.centerIn: parent
            text: "Quantity"
            font.pixelSize: pixel
        }
    }

    Rectangle {
        width: dp(parent.width * 0.2)
        height: dp(25)
        color: "lightgray"
        anchors.right: parent.right
        anchors.rightMargin: dp(15)
        anchors.verticalCenter: parent.verticalCenter

        AppText {
            anchors.centerIn: parent
            text: "Price"
            font.pixelSize: pixel
        }
    }
}
