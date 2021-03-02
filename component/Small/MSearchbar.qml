//搜索框
import QtQuick 2.7
Item {
    id:root
    width: 132
    height: width*0.25
    property bool highlight: false          //按钮高亮
    property int timer_interval: 500        //光标闪烁间隔

    Image {
        id: image
        layer.mipmap: true
        anchors.fill: parent
        source:"qrc:/buttonsimple/调度中心-列表-搜索框0001.png"

        Image {
            width: root.width*0.1894
            height: width
            anchors.right: parent.right
            anchors.rightMargin: root.width*0.0303
            anchors.bottom: parent.bottom
            anchors.bottomMargin: root.width*0.0303
            anchors.top: parent.top
            anchors.topMargin: root.width*0.0303
            source:mousearea_.pressed ?"qrc:/buttonsimple/调度中心-列表-搜索按钮0002.png":
                              "qrc:/buttonsimple/调度中心-列表-搜索按钮0001.png"
            MouseArea{
                id:mousearea_
                anchors.fill: parent
            }
        }
    }
    TextInput{
        height: root.height
        color: "#66ffff"
        text: ""
        anchors.verticalCenter: parent.verticalCenter
        font.family:fonts.fzzyjt.name
        layer.mipmap: true
        clip: true
        font.pixelSize: root.width*0.1212
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        anchors.right: parent.right
        anchors.rightMargin: root.width*0.25
        anchors.left: parent.left
        anchors.leftMargin: root.width*0.0303
        cursorDelegate: comp_cursor
    }
    Component{//光标
        id:comp_cursor
        Item {
            Image{
                anchors.left: parent.left
                anchors.leftMargin:-root.width*0.0303
                anchors.top: parent.top
                anchors.topMargin:-3
                layer.mipmap: true
                visible: textinput.focus
                source: timer.timer_cursor?"qrc:/buttonsimple/调度中心-列表-光标0001.png":""
            }
        }
    }
    Timer{//
        id:timer
        interval: timer_interval
        property bool timer_cursor: false       //光标闪烁
        repeat: true;
        running: true
        onTriggered: {
            timer_cursor = !timer_cursor
        }
    }
}


