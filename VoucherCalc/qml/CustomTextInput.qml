import QtQuick 2.0
import Felgo 3.0

Rectangle {
    property int outputTextWidth
    property int outputTextHeight
    property real outputText
    property real pixel

    width: outputTextWidth
    height: outputTextHeight
    color: "lightgray"

    AppText {
        anchors.left: parent.left
        anchors.leftMargin: dp(5)
        anchors.verticalCenter: parent.verticalCenter
        text: outputText
        font.pixelSize: pixel
    }
}
