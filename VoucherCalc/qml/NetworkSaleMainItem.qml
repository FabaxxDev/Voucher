import QtQuick 2.0
import Felgo 3.0
import "pages"
import "models"

Item {

    anchors.fill: parent

    // app initialization
    Component.onCompleted: {

        // fetch price List
        logic.fetchSavedPrice()
        logic.fetchDetails()
        logic.fetchBalance()
    }

    Logic {
        id: logic
    }

    DataModel {
        id: dataModel
        dispatcher: logic
    }

    NetWorkSaleMainPage {}
}
