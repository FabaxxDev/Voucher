import QtQuick 2.0
import Felgo 3.0
import "../Template"
import "../"
import "../models"

Page {

    title: "Network prices"
    id: pricing
    backgroundColor: "#324566"

    AppFlickable {
        id: appFlickable
        anchors.fill: parent
        contentHeight: contentCol.height * 1.1
        Column {
            id: contentCol
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: dp(15)
            spacing: dp(15)

            AppText {
                width: parent.width
                wrapMode: "WrapAtWordBoundaryOrAnywhere"
                font.pixelSize: sp(12)
                text: "Use the form below to set the prices of all network lines and save to update the welcome page"
                color: "white"
            }

            AppText {
                width: parent.width
                font.pixelSize: sp(12)
                color: Theme.secondaryTextColor
                font.italic: true
                text: "Set all network price per units of one hundred naira"
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            }

            PriceTags {}

            BackgroundRec2 {
                id: priceMtn
                property string mtnName: "mtn"
                customWidth: parent.width
                customHeight: dp(30)
                customColor: "yellow"
                recWidth: dp(parent.width * 0.2)
                recHeight: dp(25)
                textName: "MTN"
                pixel: sp(12)

                onTextChanged: {
                    dataModel.modelPrice.mtn = customInputText
                }
            }

            BackgroundRec2 {
                id: priceAirtel
                customWidth: parent.width
                customHeight: dp(30)
                customColor: "red"
                recWidth: dp(parent.width * 0.2)
                recHeight: dp(25)
                textName: "AIRTEL"
                pixel: sp(12)

                onTextChanged: {
                    dataModel.modelPrice.airtel = customInputText
                }
            }

            BackgroundRec2 {
                id: priceGlo
                customWidth: parent.width
                customHeight: dp(30)
                customColor: "#00ff00"
                recWidth: dp(parent.width * 0.2)
                recHeight: dp(25)
                textName: "GLO"
                pixel: sp(12)

                onTextChanged: {
                    dataModel.modelPrice.glo = customInputText
                }
            }

            BackgroundRec2 {
                id: price9mobile
                customWidth: parent.width
                customHeight: dp(30)
                customColor: "#719e07"
                recWidth: dp(parent.width * 0.2)
                recHeight: dp(25)
                textName: "ETISALAT"
                pixel: sp(12)

                onTextChanged: {
                    dataModel.modelPrice.etisalat = customInputText
                }
            }

            AppButton {
                icon: IconType.save
                text: "Save"
                backgroundColor: "red"
                fontBold: true
                anchors.right: parent.right
                onClicked: {
                    savePrice()
                    //fetchPrice()
                    console.debug("Pricing Page " + JSON.stringify(
                                      dataModel.modelPrice))
                }
            }
        }
    }

    ScrollIndicator {
        flickable: appFlickable
    }

    function savePrice() {
        logic.savePricing()
    }
}
