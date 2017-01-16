#include <QGuiApplication>
#include <masterpage.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    MasterPage p;
    p.Init();

    return app.exec();
}
