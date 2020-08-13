import QtQuick 2.0
import Felgo 3.0

Rectangle {
    property string textName: ""
    property int recWidth
    property int recHeight
    property color recColor
    property real pixel
    width: recWidth
    height: recHeight
    color: recColor
    AppText {
        anchors.centerIn: parent
        text: textName
        font.pixelSize: pixel
    }
}
