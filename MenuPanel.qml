import QtQuick 2.0
import QtQuick.Controls 2.0

Item {
   height: parent.height- 50
   anchors.bottom: parent.bottom
   width: 200

   id: _panelMain

   x: -200
   anchors.bottomMargin: 0
   property bool menuState : true

   Rectangle{
       anchors.fill: parent
       anchors.bottom: parent.bottom
       color: "#428bca"
       Button{
          id: btnTest1
          text: qsTr("Test")
          anchors.centerIn: parent
          onClicked:  {
               MasterClass.loadConteinerPage();
               panelHide()
          }
       }

       Button{
          text: qsTr("Test2")
          anchors.top: btnTest1.bottom
          anchors.left: parent.left;
          anchors.right: parent.right;
          onClicked:  {
              MasterClass.loadPaginaTest2();
              panelHide();
          }
       }

   }

   NumberAnimation {
               id: showAnimation
               target: _panelMain
               property: "x"
               from: -200
               to: 0
               duration: 500
  }

   NumberAnimation {
               id: hideAnimation
               target: _panelMain
               property: "x"
               from: 0
               to: -200
               duration: 500
  }

   function panelAction(){
       if(menuState){
           panelShow();
       }else{
           panelHide();
       }
   }

   function panelHide(){
       hideAnimation.start();
       menuState = true;
   }


   function panelShow(){
       showAnimation.start();
       menuState = false;
   }

}
