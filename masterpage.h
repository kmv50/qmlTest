#ifndef MASTERPAGE_H
#define MASTERPAGE_H
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>

class MasterPage: public QQmlApplicationEngine
{
    Q_OBJECT
public:
    explicit MasterPage(QObject *parent = 0);
    void Init();
private:
    QQmlContext *mainContext;
    QObject * ObjetContext;
public slots:
    void loadConteinerPage();
    void loadPaginaTest2();
};

#endif // MASTERPAGE_H
