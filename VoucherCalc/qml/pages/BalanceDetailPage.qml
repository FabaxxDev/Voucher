import QtQuick 2.0
import Felgo 3.0
import "../common"

Page {

    id: page
    title: "Balance Details"

    backgroundColor: "#324566"

    property color textColor: "white"
    property var model

    //    AppFlickable {
    //        id: appFlickable
    //        anchors.fill: parent
    //        contentHeight: page.height * 1.2
    Column {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.leftMargin: dp(15)
        anchors.rightMargin: dp(15)
        anchors.topMargin: dp(15)
        spacing: dp(5)

        AppText {
            text: model.Name ? "Customer's Name: " + model.Name : "Customer's Name: " + "UnKnown"
            anchors.horizontalCenter: parent.horizontalCenter
            color: textColor
            font.pixelSize: sp(20)
        }

        SectionSpacer {
            spacerColor: textColor
        }

        AppText {
            text: "Amount to balance me: " + "\u20A6 " + model.ToBalance
            visible: model.ToBalance ? true : false
            color: textColor
            font.pixelSize: sp(20)
        }

        AppText {
            text: model.Stock ? "Total price of stock: " + "\u20A6 "
                                + model.Stock : "Total Price of stock: " + "\u20A6 " + "0"
            color: textColor
        }

        AppText {
            text: model.Cash ? "Cash received: " + "\u20A6 "
                               + model.Cash : "Cash received: " + "\u20A6 " + "0"
            color: textColor
        }
        AppText {
            text: model.Date ? "Date: " + model.Date : "Date: " + ""
            color: textColor
        }

        AppText {
            text: model.Time ? "Time: " + model.Time : "Time: " + ""
            color: textColor
        }
    }
}
