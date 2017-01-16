import QtQuick 2.0

Item {
   height: 50;
   width: parent.width;
   //property alias Btn_Menu: btnmenu
    Rectangle{
        color: "#428bca"
        anchors.fill: parent;

        Image {
            id: btn_Menu
            width: 50;
            height: parent.height
            anchors.left: parent.left
            source: "qrc:/VisualEditor_-_Icon_-_Menu.svg.png"
            fillMode: Image.PreserveAspectFit
            MouseArea{
                anchors.fill: parent
                id: btnmenu
                onClicked: {
                    masterPage.onMenuClick();
                }
            }
        }
    }
}
