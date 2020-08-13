import QtQuick 2.0
import Felgo 3.0

Item {

    signal savePricing

    signal fetchSavedPrice

    signal fetchPricing(var prices)

    signal fetchDetails

    signal saveSales

    signal getTotalPricing

    signal clearCashe

    signal removeSaleById(var model)

    signal getBalance

    signal resetSale

    signal resetBalance

    signal removeBalanceById(var model)

    signal saveBalance

    signal fetchBalance

    signal clearAllBalance

    function getTime() {
        var t = new Date()
        var h = t.getHours(), m = t.getMinutes()
        var time = (h > 12) ? h - 12 + ":" + m + " PM" : h + ":" + m + " AM"
        return time
    }

    function getDate() {
        var date = new Date()
        return date.getDate() + "/" + (date.getMonth(
                                           ) + 1) + "/" + date.getFullYear()
        //return date.getHours() + "" + date.getMinutes() + "" + date.getSeconds()
    }

    function deleteSale() {
        var date = new Date()
        return date.getHours() + "" + date.getMinutes() + "" + date.getSeconds()
    }
}
