//飞机序号 选择按钮
import QtQuick 2.7

Item {
    id:root
    width: 63
    height: 33

    property alias  text: num.text

    FontList{id:fonts}
    Image {
        id:background
        anchors.fill: parent
        layer.mipmap: true
        source: mousearea_.pressed?"qrc:/buttonsimple/调度中心-多选框-飞机0001.png": "qrc:/buttonsimple/调度中心-多选框-飞机0003.png"
    }
    Image {
        id: air
        anchors.fill: parent
        layer.mipmap: true
        source:mousearea_.pressed?"qrc:/buttonsimple/调度中心-多选框-飞机0002.png": "qrc:/buttonsimple/调度中心-多选框-飞机0004.png"
    }
    MouseArea{
        id:mousearea_
        anchors.fill: parent

    }
    Text {
        id: num
        width: 36
        height: 18
        color: "#66ffff"
        text: "植保机"
        anchors.right: parent.right
        anchors.rightMargin: 2
        verticalAlignment: Text.AlignVCenter
        font.family:fonts.fzzyjt.name
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenterOffset: 0
        font.pixelSize: 11
        anchors.verticalCenter: parent.verticalCenter
    }

}
