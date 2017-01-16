import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: masterPage
    MainBar{
       id:_mainbar
    }

    Loader {
        id: mainConteiner
        objectName: "mainConteiner"
        anchors.top: _mainbar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }


    MenuPanel{
        id:mainPanel
    }



    function onMenuClick(){
        mainPanel.panelAction();
    }


}
