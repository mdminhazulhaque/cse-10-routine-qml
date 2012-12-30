import QtQuick 1.0
import "Element"

Rectangle {
        color: "black"
        height: 300
        width: 1100

        Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                spacing: 2
                Row {
                        spacing: 2
                        Element { grd: "cyan";  name: "Day A" }
                        Element { grd: "blue";  name: "EE-403" }
                        Element { grd: "magenta"; name: "CSE-407" }
                        Element { grd: "red"; name: "CSE-405" }
                        Element { grd: "red"; name: "CSE-406"; width: 450 }
                }
                Row {
                        spacing: 2
                        Element { grd: "cyan";  name: "Day B" }
                        Element { grd: "transparent"; }
                        Element { grd: "blue";  name: "EE-403" }
                        Element { grd: "magenta"; name: "CSE-407" }
                        Element { grd: "yellow"; name: "Math-407" }
                }
                Row {
                        spacing: 2
                        Element { grd: "cyan";  name: "Day C" }
                        Element { grd: "yellow"; name: "Math-407" }
                        Element { grd: "green"; name: "CSE-401" }
                        Element { grd: "red"; name: "CSE-405" }
                        Element { grd: "green"; name: "CSE-402"; width: 450 }
                }
                Row {
                        spacing: 2
                        Element { grd: "cyan";  name: "Day D" }
                        Element { grd: "magenta";  name: "CSE-408"; width: 450 }
                        Element { grd: "red"; name: "CSE-405" }
                        Element { grd: "green"; name: "CSE-401" }
                        Element { grd: "blue"; name: "EE-403" }
                }
                Row {
                        spacing: 2
                        Element { grd: "cyan";  name: "Day E" }
                        Element { grd: "blue";  name: "EE-404"; width: 450 }
                        Element { grd: "green"; name: "CSE-401" }
                        Element { grd: "magenta"; name: "CSE-407" }
                        Element { grd: "yellow"; name: "Math-407" }
                }
        }
}
