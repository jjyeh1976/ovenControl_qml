import QtQuick 2.0

Rectangle {
    id:root
    property string caption: "caption"
    property string content: "content"
    height:parent.height
    width:parent.width
    color: "transparent"
    Row{
        width:parent.width
        height: parent.height
        spacing: 0
        Text {
            id: label
            width:160
            font.pixelSize: 24
            font.bold: true
            font.family: "NotoSansTC-Bold"
            color:"#92F7FD"
            text: qsTr(caption)
        }
        TextInput {
            id: txt
            width:(parent.width-20)/2
            //height: parent.height
            font.pixelSize: 32
            font.bold: true
            font.family: "NotoSansTC-Bold"
            color:"#92F7FD"
            text: qsTr(content)
            inputMethodHints: Qt.ImhDigitsOnly
        }
    }
}
