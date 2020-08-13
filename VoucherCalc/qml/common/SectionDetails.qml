import QtQuick 2.0
import Felgo 3.0

Item {

    property var cash
    property var time
    property var date
    property var balance
    property int pixel: sp(20)

    Column {
        width: parent.width
        spacing: dp(15)

        AppText {
            text: cash ? "Total cash received: " + "\u20A6 "
                         + cash : "Total cash received: " + "\u20A6 " + "0"
            font.pixelSize: pixel
        }

        AppText {
            text: balance ? "Balance: " + "\u20A6 " + balance : "Balance: " + "\u20A6 " + "0"
            font.pixelSize: pixel
        }

        AppText {
            text: date ? "Date: " + date : "Date: " + "Unknow"
            font.pixelSize: pixel
        }

        AppText {
            text: time ? "Time: " + time : "Time: " + "Unknow"
            font.pixelSize: pixel
        }
    }
}
