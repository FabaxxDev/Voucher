import QtQuick 2.0
import Felgo 3.0
import "../common"

Page {

    title: "Sales Details"

    property var model

    AppFlickable {
        id: appFlickable
        anchors.fill: parent
        contentHeight: contentCol.height * 1.5
        Column {
            id: contentCol
            width: parent.width
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.topMargin: dp(10)
            anchors.top: parent.top
            anchors.leftMargin: dp(15)
            anchors.rightMargin: dp(15)

            spacing: dp(1)

            AppText {
                text: model.Name ? "Customer's Name : "
                                   + model.Name : "Customer's Name : " + "No Name"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: sp(15)
            }

            SectionSpacer {
                spacerColor: "red"
            }

            SectionTag {
                networkName: "Network"
                quantity: "Quantity"
                price: "Price"
            }

            // Display MTN 100
            SectionDisplay {
                networkName: "MTN 100"
                quantity: model.pMtn100
                price: model.mtn100
                visibility: model.mtn100
            }

            // Display MTN 200
            SectionDisplay {
                networkName: "MTN 200"
                quantity: model.pMtn200
                price: model.mtn200
                visibility: model.mtn200
            }

            // Display MTN 500
            SectionDisplay {
                networkName: "MTN 500"
                quantity: model.pMtn500
                price: model.mtn500
                visibility: model.mtn500
            }

            // Display MTN 1000
            SectionDisplay {
                networkName: "MTN 1000"
                quantity: model.pMtn1000
                price: model.mtn1000
                visibility: model.mtn1000
            }

            // Display AIRTEL 100
            SectionDisplay {
                networkName: "AIR 100"
                quantity: model.pAirtel100
                price: model.airtel100
                visibility: model.airtel100
            }

            // Display AIRTEL 200
            SectionDisplay {
                networkName: "AIR 200"
                quantity: model.pAirtel200
                price: model.airtel200
                visibility: model.airtel200
            }
            // Display AIRTEL 500
            SectionDisplay {
                networkName: "AIR 500"
                quantity: model.pAirtel500
                price: model.airtel500
                visibility: model.airtel500
            }

            // Display AIRTEL 1000
            SectionDisplay {
                networkName: "AIR 1000"
                quantity: model.pAirtel1000
                price: model.airtel1000
                visibility: model.airtel1000
            }

            // Display GLO 100
            SectionDisplay {
                networkName: "GLO 100"
                quantity: model.pGlo100
                price: model.glo100
                visibility: model.glo100
            }

            // Display GLO 200
            SectionDisplay {
                networkName: "GLO 200"
                quantity: model.pGlo200
                price: model.glo200
                visibility: model.glo200
            }
            // Display GLO 500
            SectionDisplay {
                networkName: "GLO 500"
                quantity: model.pGlo500
                price: model.glo500
                visibility: model.glo500
            }

            // Display GLO 1000
            SectionDisplay {
                networkName: "GLO 1000"
                quantity: model.pGlo1000
                price: model.glo1000
                visibility: model.glo1000
            }

            // Display ETISALAT 100
            SectionDisplay {
                networkName: "ETI 100"
                quantity: model.pEtisalat100
                price: model.etisalat100
                visibility: model.etisalat100
            }

            // Display ETISALAT 200
            SectionDisplay {
                networkName: "ETI 200"
                quantity: model.pEtisalat200
                price: model.etisalat200
                visibility: model.etisalat200
            }
            // Display ETISALAT 500
            SectionDisplay {
                networkName: "ETI 500"
                quantity: model.pEtisalat500
                price: model.etisalat500
                visibility: model.etisalat500
            }

            // Display ETISALAT 1000
            SectionDisplay {
                networkName: "ETI 1000"
                quantity: model.pEtisalat1000
                price: model.etisalat1000
                visibility: model.etisalat1000
            }

            SectionSpacer {
                spacerColor: "red"
            }

            SectionTotal {
                name: "TOTAL"
                total: model.total ? "\u20A6 " + model.total : "\u20A6 " + "0"
            }

            Rectangle {
                id: recx
                width: parent.width
                height: dp(0.5)
                color: "red"
            }

            SectionDetails {
                anchors.top: recx.bottom
                anchors.topMargin: dp(10)
                cash: model.cash
                balance: model.balance
                date: model.date
                time: model.time
            }
        }
    }

    ScrollIndicator {
        flickable: appFlickable
    }
}
