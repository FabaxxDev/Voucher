import QtQuick 2.0
import Felgo 3.0
import "../pages"

Item {

    //id: dataModel
    property alias dispatcher: logicConnection.target

    // model data properties
    readonly property alias modelPrice: _.priceModel
    readonly property var models: _.createSalesModel(_.models)
    readonly property alias prices: _.prices
    readonly property var balanceModel: _.createBalanceModel(_.balanceModel)
    // model Maps properties
    property var balanceMap: _.balanceMap
    property var saleModel: _.saleModel
    property var detailModel: _.detailModel
    property real total
    property real balance

    Connections {
        id: logicConnection

        onSavePricing: {

            cashe.setValue("id", _.priceModel)
            modelPriceChanged()
            console.debug("Model price " + JSON.stringify(_.priceModel))
            console.debug("From cashed data " + JSON.stringify(modelPrice))
            console.debug(JSON.stringify(_.retrieveData()))
        }

        onFetchSavedPrice: {
            var cashed = cashe.getValue("id")
            if (cashed)
                _.priceModel = cashed

            console.debug("Completed")
        }

        onGetTotalPricing: {
            total = _.totalPrice(saleModel)
            console.debug("from total pricing: " + JSON.stringify(
                              _.sale(saleModel)))
            console.debug(total)
        }

        onSaveSales: {
            _.salePrice.unshift(saleModel)
            cashe.setValue("sale", _.salePrice)
            console.debug(JSON.stringify(cashe.getValue("sale")))

            //saleModel = {}
            _.models.unshift(detailModel)
            cashe.setValue("details", _.models)
            _.modelsChanged()
            //detailModel = {}
        }
        onFetchDetails: {
            var cashed1 = cashe.getValue("details")
            if (cashed1)
                _.models = cashed1
            _.modelsChanged()

            console.debug("Completed")
            console.debug("Details: " + JSON.stringify(cashe.getValue(
                                                           "details")))
        }

        onSaveBalance: {
            _.balanceModel.unshift(balanceMap)
            cashe.setValue("balance", _.balanceModel)
            _.balanceModelChanged()
            console.debug(JSON.stringify(balanceModel))
            balanceMap = {}
        }

        onFetchBalance: {
            var cashed = cashe.getValue("balance")
            if (cashed)
                _.balanceModel = cashed
        }

        onRemoveSaleById: {
            var index = _.getSaleIndex(_.models, model)
            _.models.splice(index, 1)
            _.modelsChanged()
        }

        onRemoveBalanceById: {
            var index = _.getBalanceIndex(_.balanceModel, model)
            _.balanceModel.splice(index, 1)
            _.balanceModelChanged()
        }

        onResetSale: {
            cashe.setValue("details", _.models)
        }

        onResetBalance: {
            cashe.setValue("balance", _.balanceModel)
        }

        onGetBalance: {
            balance = _.balance(detailModel.total, detailModel.cash)
            console.debug(JSON.stringify(detailModel.total))
        }

        onClearCashe: {
            cashe.clearValue("details")
            _.modelsChanged()
        }

        onClearAllBalance: {
            cashe.clearValue("balance")
            _.balanceModelChanged()
        }
    }

    Storage {
        id: cashe
        databaseName: "Network"
    }

    Item {
        id: _

        property var salePrice: []
        property var saleModel: ({})
        property var models: []
        property var detailModel: ({})
        property var prices: []
        property var priceModel: ({})
        property var balanceModel: []
        property var balanceMap: ({})

        function retrieveData() {
            var cashed = cashe.getValue("id")
            return cashed
        }

        function sale(sale) {
            var i = Object.values(sale)
            return i
        }

        function totalPrice(sales) {
            var price = Object.values(sales)
            console.debug(price)
            let sum = 0
            price.forEach(function (value) {
                sum += value
            })
            return sum
        }

        function balance(totalPrice, cashReceive) {
            var totalBalance = cashReceive - totalPrice
            return totalBalance
        }

        function createSalesModel(sourse, parseValue) {
            return sourse.map(function (data) {
                if (parseValue)
                    data = JSON.parse(data)

                return {
                    "model": data
                }
            })
        }

        function createBalanceModel(source, parseValue) {
            return source.map(function (data) {
                if (parseValue)
                    data = JSON.stringify()

                return {
                    "model": data
                }
            })
        }

        function getSaleIndex(array, model) {
            for (var i = 0; i < array.length; i++) {
                if (array[i].deleteSale === model.deleteSale)
                    return i
            }
        }

        function getBalanceIndex(array, model) {
            for (var i = 0; i < array.length; i++) {
                if (array[i].deleteBalance === model.deleteBalance)
                    return i
            }
        }
    }
}
