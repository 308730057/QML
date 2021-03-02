//地块操作按钮 DIALOG左上
import QtQuick 2.7

Item {
    id:root
    width: 68
    height: width*0.4412
    property bool  highlight: false
    property alias  text: id_text_function.text
    property alias  color: id_text_function.color

    FontList{id:fonts}

    Image {
        layer.mipmap: true
        anchors.fill: parent
        source: highlight?"qrc:/buttonsimple/手持端展开信息-地块目录缩略按钮0002.png": "qrc:/buttonsimple/手持端展开信息-地块目录缩略按钮0001.png"

    }
    Text {
        id: id_text_function
        color:highlight?"#ffcc33":"#66ffff"
        text: "软件功能"
        font.family:fonts.fzzyjt.name
        font.pixelSize: root.width*0.18
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}

