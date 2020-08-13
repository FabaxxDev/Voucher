import QtQuick 2.0
import Felgo 3.0

ListPage {

    //id: listPageWrapper
    title: "Sale Lists"
    property var scrollPos: null

    backgroundColor: "#324566"

    emptyText.text: dataModel.models === undefined ? "" : "No sales made yet "

    model: JsonListModel {
        id: listModel
        source: dataModel.models
        //keyField: "total"
        fields: ["total", "Name", "date", "model"]
    }

    delegate: SwipeOptionsContainer {
        SimpleRow {
            item: listModel.get(index)
            text: model.total ? "\u20A6 " + model.total : "\u20A6 " + "0"
            detailText: model.Name ? model.Name : ""
            badgeValue: model.date ? model.date : ""

            onSelected: navigationStack.push(salesDetailPage, {
                                                 "model": item.model
                                             })
        }
        rightOption: SwipeButton {
            text: "Delete"
            icon: IconType.trash
            backgroundColor: "red"

            onClicked: NativeDialog.confirm(
                           "Confirm Delete",
                           "Are you sure want to delete this sales entry?",
                           function (accept) {
                               if (accept) {
                                   logic.removeSaleById(model)
                                   logic.resetSale()
                               }
                           })
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
                                     "Clear all sales entries", function (ok) {
                                         if (ok) {
                                             logic.clearCashe()
                                             logic.fetchDetails()
                                         }
                                     })
            }
        }
    }

    Component {
        id: salesDetailPage
        SalesListDetailPage {}
    }

    listView.onModelChanged: if (scrollPos)
                                 listView.restoreScrollPosition(scrollPos)
}
