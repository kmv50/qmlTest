import QtQuick 2.0

Item {
 anchors.fill: parent;
 ListView {
     anchors.fill: parent;
     model: myModel
     delegate: Rectangle {
         height: 25
         width: 100
         Text { text: modelData }
     }
 }
}
