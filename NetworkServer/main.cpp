#include <QCoreApplication>
#include "tcpserver.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    TcpServer server(QHostAddress::Any, 12345);

    return a.exec();
}
