import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.12

Page {
    id: page
    title: "Voucher Calculator"

    backgroundColor: "#324566"

    //    backgroundColor: "white"
    property var model: dataModel.modelPrice
    property int pixel: sp(20)

    AppFlickable {
        id: appFlickable
        anchors.fill: parent
        contentHeight: page.height * 1.2
        Rectangle {
            id: priceTagsRec
            width: parent.width
            height: dp(200)
            color: "lightgray"
            anchors.top: parent.top

            //anchors.left: parent.left
            //anchors.right: parent.right
            Column {
                anchors.fill: parent
                spacing: dp(10)
                anchors.topMargin: dp(10)
                anchors.leftMargin: dp(15)
                AppText {
                    text: "Prices"
                    font.pixelSize: pixel
                }

                AppText {
                    text: model.mtn ? "MTN 100: " + "\u20A6 "
                                      + model.mtn : "MTN 100: " + "\u20A6 " + "0"
                    font.pixelSize: pixel
                }
                AppText {
                    text: model.glo ? "GLO 100: " + "\u20A6 "
                                      + model.glo : "GLO 100: " + "\u20A6 " + "0"
                    font.pixelSize: pixel
                }
                AppText {
                    text: model.airtel ? "AIRTEL 100: " + "\u20A6 "
                                         + model.airtel : "AIRTEL 100: " + "\u20A6 " + "0"
                    font.pixelSize: pixel
                }

                AppText {
                    text: model.etisalat ? "9MOBILE 100: " + "\u20A6 "
                                           + model.etisalat : "9MOBILE 100: " + "\u20A6 " + "0"
                    font.pixelSize: pixel
                }
            }

            //            AppButton {
            //                text: "click"
            //                anchors.top: parent.top
            //                anchors.right: parent.right
            //                onClicked: {
            //                    console.debug(JSON.stringify(model))
            //                    console.debug("Details: " + JSON.stringify(
            //                                      dataModel.balanceModel))
            //                }
            //            }
        }

        Grid {
            columns: 2
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: priceTagsRec.bottom
            anchors.topMargin: dp(20)
            Rectangle {
                width: dp(100)
                height: dp(100)
                radius: dp(20)
                color: makeSale.pressed ? "blue" : "yellow"

                AppText {
                    text: "Make Sale"
                    font.pixelSize: sp(15)
                    anchors.centerIn: parent
                }
                MouseArea {
                    id: makeSale
                    anchors.fill: parent
                    onClicked: {
                        navigationStack.popAllExceptFirstAndPush(salePage)
                        console.debug("before" + JSON.stringify(
                                          dataModel.saleModel))
                    }
                }
            }

            Rectangle {
                width: dp(100)
                height: dp(100)
                radius: dp(20)
                color: "red"

                AppText {
                    text: "Sales Entries"
                    font.pixelSize: sp(15)
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        navigationStack.popAllExceptFirstAndPush(salesListPage)
                    }
                }
            }

            Rectangle {
                width: dp(100)
                height: dp(100)
                radius: dp(20)
                color: "#00ff00"

                AppText {
                    text: "Pricing"
                    font.pixelSize: sp(15)
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        navigationStack.popAllExceptFirstAndPush(pricingPage)
                    }
                }
            }

            Rectangle {
                width: dp(100)
                height: dp(100)
                radius: dp(20)
                color: "#719e07"

                AppText {
                    text: "Balances"
                    font.pixelSize: sp(15)
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        navigationStack.popAllExceptFirstAndPush(
                                    balanceListPage)
                    }
                }
            }
        }

        Component {
            id: salePage
            SalesDashBoard {}
        }
        Component {
            id: pricingPage
            PricingPage {}
        }
        Component {
            id: salesListPage
            SalesListPage {}
        }

        Component {
            id: balanceListPage
            BalanceListPage {}
        }
    }

    ScrollIndicator {
        flickable: appFlickable
    }
}
