import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Text input")

    TextField {
        id: textField
        width: 200
        placeholderText: qsTr("Enter name")
        color: "green"
        text: "123456"
    }

    TextField {
        x: 300
        width: 200
        placeholderText: qsTr("Enter name")
    }

    Label {
        y: 100
        text: textField.text
    }
}
