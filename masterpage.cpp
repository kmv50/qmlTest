#include "masterpage.h"

MasterPage::MasterPage(QObject *parent)
    :QQmlApplicationEngine(parent)
{

}


void MasterPage::Init(){
    load(QUrl(QLatin1String("qrc:/main.qml")));
    mainContext = this->rootContext();
    ObjetContext = this->rootObjects().first();
    mainContext->setContextProperty("MasterClass", this);
}


void MasterPage::loadConteinerPage(){
    qDebug() << "hola c++";
    QObject * Loader = ObjetContext->findChild<QObject*>("mainConteiner");
    if(Loader == NULL){
        qDebug() << "loader no encontrdo";
        return;
    }
    QStringList *lst_test = new QStringList({
                                   "Item 1",
                                   "Item 2",
                                   "Item 3",
                                   "Item 4",
                                   "Item 5"
                               });


       mainContext->setContextProperty("myModel", *lst_test);
       Loader->setProperty("source","qrc:/PaginaPrueba.qml");
       delete lst_test;

}


void MasterPage::loadPaginaTest2(){
    QObject * Loader = ObjetContext->findChild<QObject*>("mainConteiner");
    if(Loader == NULL){
        qDebug() << "loader no encontrdo";
        return;
    }
    Loader->setProperty("source","qrc:/PAginaPrueba2.qml");
}

//QDeclarativePropertyMap
void MasterPage::accion3(){
   QVariant value = mainContext->contextProperty("myModel");
   if(!value.isNull()){
    qDebug() << value;
    QStringList *lst_test = new QStringList({
                                   "modelo 1",
                                   "modelo 2",
                                   "modelo 3",
                                   "punt",
                               });


       mainContext->setContextProperty("myModel", *lst_test);
       delete lst_test;

       value = mainContext->contextProperty("myModel");
       qDebug() << value;
   }

}
