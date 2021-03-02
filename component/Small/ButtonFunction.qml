//下方操作按钮
import QtQuick 2.7

Item {
    id:root
    width: 123
    height: width*0.5609
    property bool  highlight: false
    property alias  text: id_text_function.text
    property alias  color: id_text_function.color

    FontList{id:fonts}
    Image {
        layer.mipmap: true
        anchors.fill: parent
        source: highlight?"qrc:/buttonsimple/调度中心-下方按钮输出文件0002.png": "qrc:/buttonsimple/调度中心-下方按钮输出文件0001.png"

        Text {
            id: id_text_function
            color:highlight?"#ffcc33":"#66ffff"
            text: "软件好功能"
            font.pixelSize: 22
            font.family:fonts.fzzyjt.name
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
