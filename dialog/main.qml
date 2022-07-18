import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: button1
        anchors.centerIn: parent
        onClicked: {
            dialog.open()
        }
    }

    Dialog {
        id: dialog
        title: "Title"
        standardButtons: Dialog.Ok | Dialog.Cancel
        anchors.centerIn: parent

        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")

        Label {
            anchors.fill: parent
            text: "hello world world world world"
        }
    }
}
