import QtQuick 2.0
import Felgo 3.0

Item {
    property string networkName
    property var visibility
    property string quantity
    property string price

    width: parent.width

    //color: "transparent"
    height: dp(textt.height)
    AppText {
        id: textt
        text: networkName
        anchors.left: parent.left
        //visible: visibility ? true : false
    }

    AppText {
        text: quantity
        anchors.horizontalCenter: parent.horizontalCenter
        //visible: visibility ? true : false
    }

    AppText {
        text: price
        anchors.right: parent.right
        //visible: visibility ? true : false
    }
}
