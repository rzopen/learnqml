import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        anchors.centerIn: parent
        width: 100
        height: 40
        text: qsTr("Label text")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        font.bold: true
        font.pixelSize: 14

        background: Rectangle {
            color: "gray"
        }
    }
}
