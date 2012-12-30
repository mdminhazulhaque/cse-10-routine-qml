import QtQuick 1.0

Rectangle {
        property string name
        property string grd: "black"
        height: 50
        smooth: true
        width: 150
        gradient: Gradient {
        GradientStop { position: 0;   color: grd }
        GradientStop { position: 1;   color: "transparent" }
        }

        MouseArea {
                id: mouse
                anchors.fill: parent
                hoverEnabled: true
                onEntered: { anim.start() }
                onExited: { anim.stop(); parent.rotation = 0 }
        }

        Text {
                id: text
                anchors.centerIn: parent
                color: "white"
                font.family: "Cooper Black"
                font.pointSize: 20
                text: parent.name
        }
        SequentialAnimation on rotation {
                running: mouse.pressed
                id: anim
                loops: Animation.Infinite
                NumberAnimation { from: 0; to: 360; easing.type: Easing.InOutBack; duration: 1000 }
                PauseAnimation { duration: 2000 }
        }
}
