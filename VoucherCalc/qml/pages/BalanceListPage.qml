import QtQuick 2.0
import Felgo 3.0

ListPage {

    title: "Balance Lists"

    property var scrollPos: null

    rightBarItem: IconButtonBarItem {
        icon: IconType.plus
        title: "Add new balance"
        onClicked: {

            navigationStack.push(balancePage)
        }
    }

    backgroundColor: "#324566"
    emptyText.text: dataModel.balanceModel === undefined ? "" : "No balance added yet."

    model: JsonListModel {
        id: balanceModel
        source: dataModel.balanceModel
        fields: ["Name", "balance", "model"]
    }

    delegate: SwipeOptionsContainer {
        SimpleRow {
            item: balanceModel.get(index)
            text: model.Name ? model.Name : ""
            detailText: model.ToBalance ? "To balance me: " + "\u20A6 "
                                          + model.ToBalance : "To collect: "
                                          + "\u20A6 " + model.ToCollect
            badgeValue: model.Date
            badgeColor: model.ToBalance ? "red" : "green"

            onSelected: navigationStack.push(balanceDetailPage, {
                                                 "model": item.model
                                             })
        }

        rightOption: SwipeButton {
            text: "Delete"
            icon: IconType.trash
            backgroundColor: model.ToBalance ? "red" : "green"

            onClicked: {
                NativeDialog.confirm("Confirm delete", "Delete this entry",
                                     function (ok) {
                                         if (ok) {
                                             logic.removeBalanceById(model)
                                             logic.resetBalance()
                                         }
                                     })
            }
        }
    }

    Rectangle {
        width: dp(50)
        height: dp(50)
        radius: dp(50)
        color: "#1569C7"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: dp(20)
        anchors.bottomMargin: dp(50)
        IconButton {
            anchors.centerIn: parent
            icon: IconType.trash
            color: "red"

            onClicked: {
                NativeDialog.confirm("Confirm delete",
                                     "Clear all balance entries",
                                     function (ok) {
                                         if (ok) {
                                             logic.clearAllBalance()
                                             logic.fetchBalance()
                                         }
                                     })
            }
        }
    }

    Component {
        id: balancePage
        BalancePage {}
    }

    Component {
        id: balanceDetailPage
        BalanceDetailPage {}
    }
    listView.onModelChanged: if (scrollPos)
                                 listView.restoreScrollPosition(scrollPos)
}
