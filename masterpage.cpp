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
    QStringList dataList;
       dataList.append("Item 1");
       dataList.append("Item 2");
       dataList.append("Item 3");
       dataList.append("Item 4");

       mainContext->setContextProperty("myModel", QVariant::fromValue(dataList));
       Loader->setProperty("source","qrc:/PaginaPrueba.qml");

}


void MasterPage::loadPaginaTest2(){
    QObject * Loader = ObjetContext->findChild<QObject*>("mainConteiner");
    if(Loader == NULL){
        qDebug() << "loader no encontrdo";
        return;
    }
    Loader->setProperty("source","qrc:/PAginaPrueba2.qml");
}
