import QtQuick 2.0
import Felgo 3.0
import "../common"

Page {

    title: "Balance"

    backgroundColor: "#324566"
    property color textColor: "White"
    property var model

    onPopped: dataModel.balanceMap = {}

    AppFlickable {
        id: appFlickable
        anchors.fill: parent
        contentHeight: contentCol.height * 1.5
        Column {
            id: contentCol
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: dp(15)
            anchors.rightMargin: dp(15)
            anchors.topMargin: dp(15)
            spacing: dp(5)

            SectionSpacer {
                spacerColor: textColor
            }

            AppText {
                width: parent.width
                text: "Set the cumulative balance amount to give or receive from a customer."
                wrapMode: "WrapAtWordBoundaryOrAnywhere"
                color: textColor
                font.pixelSize: sp(13)
            }

            AppText {
                text: "Note: delete any previous balance if already paid off or add it to new balance and delete the previous one if customer's name already exist in balance entry."
                wrapMode: "WrapAtWordBoundaryOrAnywhere"
                width: parent.width
                color: textColor
                //font.pixelSize: sp(13)
            }

            SectionSpacer {
                spacerColor: textColor
            }

            BalanceDisplay {
                displayText: "Amount: "
                placeHolderText: "To balance me."
                onTextChanged: {
                    dataModel.balanceMap.ToBalance = text
                }
            }

            //SectionSpacer {spacerColor: "white"}
            BalanceDisplay {
                displayText: "Amount: "
                placeHolderText: "To balance customer."
                onTextChanged: dataModel.balanceMap.ToCollect = text
            }

            SectionSpacer {
                spacerColor: textColor
            }

            DisplayName {
                displayText: "Name:"
                placeHolderText: "Customer's name"
                onTextChanged: {
                    dataModel.balanceMap.Name = text
                }
            }

            BalanceDisplay {
                displayText: "Price:"
                placeHolderText: "Stock price (optional)"
                onTextChanged: {
                    dataModel.balanceMap.Stock = text
                }
            }

            BalanceDisplay {
                displayText: "Cash:"
                placeHolderText: "Cash Received (optional)"
                onTextChanged: {
                    dataModel.balanceMap.Cash = text
                }
            }
            AppButton {
                id: save
                //width: parent.width
                text: "save"
                icon: IconType.save
                backgroundColor: "red"
                fontBold: true
                anchors.right: parent.right

                onClicked: {
                    dataModel.balanceMap.Date = logic.getDate()
                    dataModel.balanceMap.Time = logic.getTime()
                    dataModel.balanceMap.deleteBalance = logic.deleteSale()
                    logic.saveBalance()
                    logic.fetchBalance()
                    console.debug("BalanceMap: " + JSON.stringify(
                                      dataModel.balanceMap))
                }
            }
        }
    }

    ScrollIndicator {
        flickable: appFlickable
    }
}
