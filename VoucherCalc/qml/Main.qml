import Felgo 3.0
import QtQuick 2.0
import "pages"


/*/////////////////////////////////////
  NOTE:
  Additional integration steps are needed to use Felgo Plugins, for example to add and link required libraries for Android and iOS.
  Please follow the integration steps described in the plugin documentation of your chosen plugins:
  - AdMob: https://felgo.com/doc/plugin-admob/

  To open the documentation of a plugin item in Qt Creator, place your cursor on the item in your QML code and press F1.
  This allows to view the properties, methods and signals of Felgo Plugins directly in Qt Creator.

/////////////////////////////////////*/
App {

    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    licenseKey: "91B10BA78D9ACE12A20B4643C82F1F514CC2EABC2829C37F3CDBD8674A619CBF08EDF74F66F462913C9DA6FD0FCF0C0F2090FA313FD06CDF8947D172579F2904BA177057CEB8546F7B03457DB7E7B07A24F2BF7D0EF74FDE31881ED67B4017509A332DE128EC6EF18F3505E2FA7B0489DD39C79C9F69B517A69CFE5082DAAED985F8F04A8A67ACE71DF0EEB0BEE160492D1C0E308698C1CF762094A5E0615E705056B9BC9A79D6DA3DF7750E46EC716B82D707D92B1C1C6EABB7DA8AF24ED9AED60374D8E928A3DD12123D337E69FC328C13CFFDABB853385F2D4BCF4CA85DF2C86BE291E583EAA838EB7AE428EF2F683F81C3E5CFEF3B686AA4D435EC5FEB22522A2BD5A9D07D7703E5DAE9EB0C77F6099BAA1C47567A8694C111F0E0499C7A3F1A13C826B9994D9E3A57B45E1A7D8E13D06830348E48F95EED963528117276D2FA14D88EFDE2A7277E54B8401C1CF3"
    // This item contains example code for the chosen Felgo Plugins
    // It is hidden by default and will overlay the QML items below if shown
    NetworkSaleMainItem {
        visible: true
    }
}
