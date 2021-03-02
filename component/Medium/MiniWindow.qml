//弹窗
import QtQuick 2.7
import Small 1.0
Item {
    id:root
    width: 560
    height: 100
    property bool  button_sure:false
    property bool  button_cancel:false
    property alias  text : tip.text         //弹窗标题 提示内容


    Rectangle{
        border.color: "#66ffff"
        border.width: 2
        anchors.fill: parent
        color: "#00000000"

    }
    Image {
        id: image_top
        width: 560
        height: 15
        layer.mipmap: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        source: "qrc:/buttonsimple/调度中心-弹出窗口-警戒条0001.png"
    }
    Image {
        id: image_warning
        layer.mipmap: true
        anchors.top: parent.top
        anchors.topMargin: 31
        anchors.left: parent.left
        anchors.leftMargin: 49
        source: "qrc:/buttonsimple/调度中心-警戒符号0001.png"
    }
    Text {
        id: tip
        width: 452
        height: 25
        color: "#66ffff"
        font.family:fonts.fzzyjt.name
        text: "土豆土豆土豆土豆土豆土豆土豆土豆土豆"
        font.pixelSize: 18
        anchors.leftMargin: 100
        anchors.topMargin: 38
        anchors.left: parent.left
    
        anchors.top: parent.top
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
    }
    ButtonMiniWindow{
        id:buttonminiwindow_sure
        x: 254
        y: 62
        text: "确认"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                button_sure = !button_sure
            }
        }
    }
    ButtonMiniWindow{
        id:buttonminiwindow_cancel
        x: 396
        y: 62
        text: "取消"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                button_cancel=!button_cancel
            }
        }
    }

}


