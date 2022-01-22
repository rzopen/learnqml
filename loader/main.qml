import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Tabs")

    property QtObject logo: null

    Rectangle {
        width: 100
        height: 24
        color: "gray"

        Label {
            anchors.centerIn: parent
            text: qsTr("B2")
            Rectangle{
                anchors.fill: parent
                color:"red"
                opacity: 0.3
            }
        }
    }

    Button {
        x: 200
        text: "A"
        onClicked: {
            if (logo == null) {
                logo = loadLogo()
            } else {
                logo.destroy()
            }
        }
    }

    function loadLogo() {
        var component = Qt.createComponent("Page1.qml");
        if (component.status === Component.Ready) {
            var button = component.createObject(window);
            //button.y = 0;
            //button.color = "red";
            return button;
        }
    }
}
