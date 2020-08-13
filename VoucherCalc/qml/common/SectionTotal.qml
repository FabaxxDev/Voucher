import QtQuick 2.0
import Felgo 3.0

Item {
    property string name

    property string total

    property int pixel: sp(25)

    width: parent.width

    //color: "transparent"
    height: dp(textt.height)
    AppText {
        id: textt
        text: name
        anchors.left: parent.left
        font.pixelSize: pixel
        //visible: visibility ? true : false
    }

    AppText {
        text: total
        anchors.right: parent.right
        font.pixelSize: pixel
        //visible: visibility ? true : false
    }
}
