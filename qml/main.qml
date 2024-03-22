import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Ping IP Address"

    Column {
        anchors.centerIn: parent
        spacing: 10

        TextField {
            id: ipField
            placeholderText: "Enter IP address"
            width: 200
        }

        Button {
            text: "Ping"
            onClicked: {
                var process = new QProcess();
                process.start("ping", ["-c", "4", ipField.text]);
                process.waitForFinished();
                var output = process.readAllStandardOutput();
                resultArea.text = output;
            }
        }

        TextArea {
            id: resultArea
            width: 200
            height: 200
            readOnly: true
        }
    }
}