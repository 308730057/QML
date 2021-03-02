import QtQuick 2.7
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import Small 1.0
import Medium 1.0
import Large 1.0
Window {
    id: window
    visible: true
    width: 1281
    height: 1024
    title: qsTr("指挥中心")
    color: "#aa010114"

    FontList{id:fonts}
    Image {//背景
        id: image_background
        width: 1281
        height: 925
        source: "qrc:/general/调度中心-大边框0001.png"
        Text {
            id: title
            x: 571
            y: 0
            width: 139
            height: 29
            color: "#66ffff"
            text: "无人机调度系统"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.family:fonts.fzzyjt.name
            font.pixelSize: 18
        }
    }

    Image {//下边界 左
        id:bottom_left
        width: 13
        height: 95
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        source: id_listfunction.ismoving?"qrc:/buttonsimple/调度中心-下方按钮栏边界0002.png":"qrc:/buttonsimple/调度中心-下方按钮栏边界0001.png"
    }

    Image {//下边界 右
        id:bottom_right
        width: 13
        height: 95
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        mirror: true
        anchors.right: parent.right
        anchors.rightMargin: 0
        source: id_listfunction.ismoving?"qrc:/buttonsimple/调度中心-下方按钮栏边界0002.png": "qrc:/buttonsimple/调度中心-下方按钮栏边界0001.png"
    }
    DialogMain{//上部分窗口
        id: dialogmain_up
        width: 971
        height: 451
        anchors.horizontalCenterOffset: 0
        anchors.top: parent.top
        anchors.topMargin: 59
        anchors.horizontalCenter: parent.horizontalCenter
    }
    DialogVice{//下部分窗口
        id: dialogvice_down
        width: 971
        height: 451
        anchors.horizontalCenter: parent.horizontalCenter     
        anchors.top: dialogmain_up.bottom
        anchors.topMargin: -37
        buttonterminal_state: false
    }
    ListAirline{//地块信息 左
        id:listairline_left
        width: 152
        state: "left"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: image_background.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 9
    }
    ListAirline{//地块信息 右
        id:listairline_right
        width: 152
        state: "right"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: image_background.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 9
    }

    ListFunction{//操作列表
        id: id_listfunction
        y: 931
        height: 96
        anchors.verticalCenter: bottom_left.verticalCenter
        anchors.right: bottom_right.left
        anchors.rightMargin: -2
        anchors.left: bottom_left.right
        anchors.leftMargin: -2

    }
    Item {//箭头指示 左
        id:arrow_left
        x: 342
        y: 5
        width: 217
        height: 14
        Image {
            id: arrow1
            anchors.fill: parent
            visible: false
            antialiasing: true
            layer.mipmap: true
            anchors.top: parent.top
            anchors.topMargin: -2
            source: "qrc:/buttonsimple/大边框进度条0001.png"
        }
        Item {
            id:arrow1back
            anchors.fill:parent
            Rectangle{
                id:arrow1light
                height: parent.height
                width:timer.arrow_lenth
                color: "#06FFFF"
                anchors.left: parent.left
                anchors.leftMargin: 1
            }
            visible: false
        }
        OpacityMask{
            anchors.fill:parent
            source: arrow1back
            maskSource: arrow1
            invert: true
        }
    }

    Item {//箭头指示 左
        id:arrow_right
        x: 721
        y: 5
        width: 217
        height: 14
        Image {
            id: arrow2
            anchors.fill: parent
            visible: false
            antialiasing: true
            layer.mipmap: true
            source: "qrc:/buttonsimple/大边框进度条0002.png"
        }
        Item {
            id:arrow2back
            anchors.fill:parent
            Rectangle{
                id:arrow2light
                height: parent.height
                width:timer.arrow_lenth
                color: "#06FFFF"
                anchors.right: parent.right
                anchors.rightMargin: 1
            }
            visible: false
        }
        OpacityMask{
            anchors.fill:parent
            source: arrow2back
            maskSource: arrow2
            invert: true
        }
    }

    Timer{//箭头指示计时器
        id:timer
        interval: 1000
        property int arrow_lenth: 0       //箭头长度
        repeat: true;
        running: true
        onTriggered: {
            arrow_lenth = getRandomNum(1,20)*10.75
        }
    }
    function getRandomNum(Min,Max)//随机数函数
    {
        var Range = Max - Min;
        var Rand = Math.random();
        return(Min + Math.round(Rand * Range));
    }
}

/*##^##
Designer {
    D{i:3;anchors_x:155;anchors_y:8}D{i:2;anchors_x:155;anchors_y:8}D{i:4;anchors_width:800;anchors_x:155;anchors_y:393}
D{i:5;anchors_width:800;anchors_x:100}D{i:6;anchors_height:89;anchors_y:783}D{i:7;anchors_height:89;anchors_width:217;anchors_x:721;anchors_y:783}
D{i:8;anchors_height:89;anchors_width:217;anchors_x:721;anchors_y:783}D{i:9;anchors_width:600;anchors_x:0}
}
##^##*/
