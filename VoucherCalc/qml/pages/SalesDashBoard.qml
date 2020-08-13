import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.1
import "../Template"
import "../"
import "../common"

Page {
    id: salePage
    title: "Sales Dash Board"

    readonly property var model: dataModel.modelPrice

    onPopped: {
        dataModel.total = 0
        dataModel.balance = 0
        dataModel.saleModel = {}
        dataModel.detailModel = {}
    }
    backgroundColor: "#324566"

    AppFlickable {
        id: appFlickable
        anchors.fill: parent
        contentHeight: contentCol.height * 1.2
        Column {
            id: contentCol
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: dp(15)
            clip: true

            SaleTag {}

            BackgroundRec {

                property real mtn100: customInputText * model.mtn * 1
                customColor: "yellow"
                textName: "MTN 100"
                outputText: mtn100
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.mtn100 = mtn100
                    dataModel.detailModel.pMtn100 = customInputText
                    dataModel.detailModel.mtn100 = mtn100
                    //console.debug(JSON.stringify(customInputText))
                }
            }

            BackgroundRec {

                property real mtn200: customInputText * model.mtn * 2
                customColor: "yellow"
                textName: "MTN 200"
                outputText: mtn200
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.mtn200 = mtn200
                    dataModel.detailModel.pMtn200 = customInputText
                    dataModel.detailModel.mtn200 = mtn200
                }
            }

            BackgroundRec {

                property real mtn500: customInputText * model.mtn * 5
                customColor: "yellow"
                textName: "MTN 500"
                outputText: mtn500
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.mtn500 = mtn500
                    dataModel.detailModel.pMtn500 = customInputText
                    dataModel.detailModel.mtn500 = mtn500
                }
            }

            BackgroundRec {

                property real mtn1000: customInputText * model.mtn * 10
                customColor: "yellow"
                textName: "MTN 1000"
                outputText: mtn1000
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.mtn1000 = mtn1000
                    dataModel.detailModel.pMtn1000 = customInputText
                    dataModel.detailModel.mtn1000 = mtn1000
                }
            }

            BackgroundRec {

                property real airtel100: customInputText * model.airtel * 1
                customColor: "red"
                textName: "AIR 100"
                outputText: airtel100
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.airtel100 = airtel100
                    dataModel.detailModel.pAirtel100 = customInputText
                    dataModel.detailModel.airtel100 = airtel100
                }
            }

            BackgroundRec {

                property real airtel200: customInputText * model.airtel * 2
                customColor: "red"
                textName: "AIR 200"
                outputText: airtel200
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.airtel200 = airtel200
                    dataModel.detailModel.pAirtel200 = customInputText
                    dataModel.detailModel.airtel200 = airtel200
                }
            }

            BackgroundRec {

                property real airtel500: customInputText * model.airtel * 5
                customColor: "red"
                textName: "AIR 500"
                outputText: airtel500
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.airtel500 = airtel500
                    dataModel.detailModel.pAirtel500 = customInputText
                    dataModel.detailModel.airtel500 = airtel500
                }
            }

            BackgroundRec {

                property real airtel1000: customInputText * model.airtel * 10
                customColor: "red"
                textName: "AIR 1000"
                outputText: airtel1000
                onOutputTextChanged: {
                    //console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.airtel1000 = airtel1000
                    dataModel.detailModel.pAirtel1000 = customInputText
                    dataModel.detailModel.airtel1000 = airtel1000
                }
            }

            BackgroundRec {

                property real glo100: customInputText * model.glo * 1
                customColor: "#00ff00"
                textName: "GLO 100"
                outputText: glo100
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.glo100 = glo100
                    dataModel.detailModel.pGlo100 = customInputText
                    dataModel.detailModel.glo100 = glo100
                }
            }

            BackgroundRec {

                property real glo200: customInputText * model.glo * 2
                customColor: "#00ff00"
                textName: "GLO 200"
                outputText: glo200
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.glo200 = glo200
                    dataModel.detailModel.pGlo200 = customInputText
                    dataModel.detailModel.glo200 = glo200
                }
            }

            BackgroundRec {

                property real glo500: customInputText * model.glo * 5
                customColor: "#00ff00"
                textName: "GLO 500"
                outputText: glo500
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.glo500 = glo500
                    dataModel.detailModel.pGlo500 = customInputText
                    dataModel.detailModel.glo500 = glo500
                }
            }

            BackgroundRec {

                property real glo1000: customInputText * model.glo * 10
                customColor: "#00ff00"
                textName: "GLO 1000"
                outputText: glo1000
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.glo1000 = glo1000
                    dataModel.detailModel.pGlo1000 = customInputText
                    dataModel.detailModel.glo1000 = glo1000
                }
            }

            BackgroundRec {

                property real etisalat100: customInputText * model.etisalat * 1
                customColor: "#719e07"
                textName: "ETI 100"
                outputText: etisalat100
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.etisalat100 = etisalat100
                    dataModel.detailModel.pEtisalat100 = customInputText
                    dataModel.detailModel.etisalat100 = etisalat100
                }
            }

            BackgroundRec {

                property real etisalat200: customInputText * model.etisalat * 2
                customColor: "#719e07"
                textName: "ETI 200"
                outputText: etisalat200
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.etisalat200 = etisalat200
                    dataModel.detailModel.pEtisalat200 = customInputText
                    dataModel.detailModel.etisalat200 = etisalat200
                }
            }

            BackgroundRec {

                property real etisalat500: customInputText * model.etisalat * 5
                customColor: "#719e07"
                textName: "ETI 500"
                outputText: etisalat500
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.etisalat500 = etisalat500
                    dataModel.detailModel.pEtisalat500 = customInputText
                    dataModel.detailModel.etisalat500 = etisalat500
                }
            }

            BackgroundRec {

                property real etisalat1000: customInputText * model.etisalat * 10
                customColor: "#719e07"
                textName: "ETI 1000"
                outputText: etisalat1000
                onOutputTextChanged: {
                    console.debug("Input of " + customInputText + " accepted")
                    dataModel.saleModel.etisalat1000 = etisalat1000
                    dataModel.detailModel.pEtisalat1000 = customInputText
                    dataModel.detailModel.etisalat1000 = etisalat1000
                }
            }

            Rectangle {
                width: parent.width
                height: dp(40)
                color: "white"

                AppButton {
                    text: "Total"
                    fontBold: true
                    anchors.left: parent.left
                    anchors.leftMargin: dp(10)
                    anchors.verticalCenter: parent.verticalCenter

                    onClicked: {
                        total()
                        console.debug("Total price " + dataModel.total)
                        dataModel.detailModel.total = dataModel.total
                        dataModel.detailModel.date = logic.getDate()
                        dataModel.detailModel.deleteSale = logic.deleteSale()
                        dataModel.detailModel.time = logic.getTime()
                        console.debug("Date : " + logic.getDate(
                                          ) + "Time: " + logic.getTime())
                    }
                }

                Rectangle {
                    width: dp(parent.width * 0.3)
                    height: dp(30)
                    color: "lightgray"
                    anchors.right: parent.right
                    anchors.rightMargin: dp(10)
                    anchors.verticalCenter: parent.verticalCenter

                    AppText {
                        text: "\u20A6 " + dataModel.total
                        font.pixelSize: dp(17)
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: dp(5)
                    }
                }
            }

            DisplayName {
                displayText: "Name : "
                placeHolderText: "Customers's Name"
                onTextChanged: {
                    dataModel.detailModel.Name = text
                }
            }

            BalanceDisplay {
                displayText: "Amount :"
                placeHolderText: "Cash Received"
                onTextChanged: {
                    dataModel.detailModel.cash = text
                }
            }

            Rectangle {
                width: parent.width
                height: dp(40)
                color: "white"

                AppButton {
                    text: "Balance"
                    fontBold: true
                    anchors.left: parent.left
                    anchors.leftMargin: dp(10)
                    anchors.verticalCenter: parent.verticalCenter

                    onClicked: {
                        balance()
                        dataModel.detailModel.balance = dataModel.balance
                    }
                }

                Rectangle {
                    width: dp(parent.width * 0.3)
                    height: dp(30)
                    color: "lightgray"
                    anchors.right: parent.right
                    anchors.rightMargin: dp(10)
                    anchors.verticalCenter: parent.verticalCenter

                    AppText {
                        text: "\u20A6 " + dataModel.balance
                        font.pixelSize: dp(17)
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.leftMargin: dp(5)
                    }
                }
            }

            AppButton {
                id: saveIt
                text: "Save"
                icon: IconType.save
                fontBold: true
                backgroundColor: "red"
                anchors.right: parent.right

                onClicked: {
                    console.debug("Saving sale")
                    save()
                    fetchDetails()

                    console.debug(JSON.stringify(dataModel.detailModel))
                }
            }
        }
    }

    ScrollIndicator {
        flickable: appFlickable
    }

    function total() {
        logic.getTotalPricing()
    }

    function save() {
        logic.saveSales()
    }

    function fetchDetails() {
        logic.fetchDetails()
    }

    function balance() {
        logic.getBalance()
    }
}
