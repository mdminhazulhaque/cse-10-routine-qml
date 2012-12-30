#include "qmlapplicationviewer.h"
#include <QtGui/QApplication>
#include <QAction>
#include <QDesktopWidget>

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QmlApplicationViewer viewer;
    QAction action(&viewer);
    action.setShortcut(Qt::Key_Escape);
    QApplication::connect(&action, SIGNAL(triggered()), &viewer, SLOT(close()));
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockLandscape);
    viewer.setMainQmlFile(QLatin1String("qml/main.qml"));
    viewer.setWindowTitle("CSE 10 Routine");
    QRect screenGeometry = QApplication::desktop()->screenGeometry();
    int x = (screenGeometry.width()-viewer.width()) / 2;
    int y = (screenGeometry.height()-viewer.height()) / 2;
    viewer.move(x,y);
    viewer.addAction(&action);
    viewer.showExpanded();
    return app.exec();
}
