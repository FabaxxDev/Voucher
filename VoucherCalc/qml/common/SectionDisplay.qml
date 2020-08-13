import QtQuick 2.0
import Felgo 3.0

Item {
    property string networkName
    property var visibility
    property var quantity
    property var price

    width: parent.width

    //color: "transparent"
    height: dp(textt.height)
    visible: visibility > 0 ? true : false
    AppText {
        id: textt
        text: networkName
        anchors.left: parent.left
        //visible: visibility ? true : false
    }

    AppText {
        text: quantity ? "x" + quantity : ""
        font.pixelSize: sp(17)
        anchors.horizontalCenter: parent.horizontalCenter
        //visible: visibility ? true : false
    }

    AppText {
        text: price ? price : ""
        anchors.right: parent.right
        //visible: visibility ? true : false
    }
}
