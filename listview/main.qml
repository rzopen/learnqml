import QtQuick 2.12
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import Collage 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 400
    height: 640
    title: qsTr("Guard")

    ListView {
        anchors.fill: parent

        delegate: RowLayout {
            implicitHeight: 40
            Label {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 40
                verticalAlignment: Qt.AlignVCenter
                text: id
            }
            Label {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 40
                verticalAlignment: Qt.AlignVCenter
                text: name
            }
            Label {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 220
                verticalAlignment: Qt.AlignVCenter
                text: name
            }
            Image {
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.preferredWidth: 40
                source: "qrc:/sunlight.png"
            }
        }

        model: collages
    }
}
