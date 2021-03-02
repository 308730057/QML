//显示窗口 主
import QtQuick 2.0
import Medium 1.0
import Small 1.0
Item {
    id:root
    width: 971
    height: 451
    property bool   buttonterminal_state:  true    //true设备 false任务
    property bool   button_sure:false                //确定按钮 状态
    property bool   button_cancel:false              //取消按钮 状态
    property bool   listterminal_click:false         //设备列表点击 状态
    property int    timer_miniwindow:2000         //弹窗消失时间

    Image {
        x: 938
        y: 406

        source: "qrc:/buttonsimple/按钮栏指向箭头0001.png"
    }
    Image {
        id: background_bottom
        width: 499
        height: 47
        anchors.top: parent.top
        anchors.topMargin: 406
        anchors.left: parent.left
        anchors.leftMargin: 472
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 1
        rotation: 180
        source: "qrc:/buttonsimple/按钮栏指向分隔图标0001.png"
    }

    MiniWindow{//可操作弹窗
        id: miniwindow_
        y: 323
        width: 373
        height: 0
        clip: true
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 45
        Behavior on height {PropertyAnimation {duration: 100}}
        anchors.left: parent.left
        anchors.leftMargin: 10
        onButton_cancelChanged: {
            height = 0
        }
        onButton_sureChanged: {
            height = 0
        }

    }
    onListterminal_clickChanged: {
        miniwindow_.height = 100
    }

    Canvas{//外框

        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d");
            var bottom_width = root.width*0.047   //底中心宽
            var bottom_height = root.width*0.0463   //底中心宽
            var border_angle = 4    //边角 大小
            var arrow_angle = 40    //列表中心角
            ctx.strokeStyle = "#66ffff";
            ctx.lineWidth = 2;

            ctx.beginPath();
            ctx.moveTo(border_angle, 0);
            ctx.lineTo(root.width-border_angle, 0);
            ctx.lineTo(root.width, border_angle);

            ctx.lineTo(root.width, root.height-arrow_angle);
            ctx.lineTo(root.width-arrow_angle*0.51, root.height-arrow_angle*0.499);
            ctx.lineTo(root.width, root.height);

            ctx.lineTo(root.width-root.width*0.4654, root.height);
            ctx.lineTo(root.width-root.width*0.4654-bottom_width, root.height-bottom_height+1);
            ctx.lineTo(border_angle, root.height-bottom_height+1);
            ctx.lineTo(0, root.height-bottom_width-border_angle);
            ctx.lineTo(0,border_angle);
            ctx.lineTo(border_angle,0);

            ctx.closePath();
            ctx.stroke();
        }
    }

    ListTerminal{
        id:listterminal_
        x: 886
        width: 77
        anchors.bottomMargin: 1
        anchors.topMargin: 5
        anchors.bottom: buttonsort.top
        anchors.top: parent.top
    }

    ButtonSortTerminal{
        id: buttonsort
        x: 893
        y: 366
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 38
        anchors.right: parent.right
        anchors.rightMargin: 15

    }

    Rectangle{//直角边框
        id: minimap
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 588
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: miniwindow_.top
        anchors.bottomMargin: 3
        anchors.top: parent.top
        anchors.topMargin: 10

        property int  m_height: 30          //竖 高度
        property int  m_linewidth: 2        //竖 宽度
        property int  m_width: 30           //横 宽度
        property int  m_lineheight: 2

        //横 高度
        Rectangle{//竖
            width: minimap.m_linewidth
            height:minimap.m_height
            color: "aqua"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        Rectangle{//竖
            width: minimap.m_linewidth
            height:minimap.m_height
            color: "aqua"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
        Rectangle{//竖
            width: minimap.m_linewidth
            height:minimap.m_height
            color: "aqua"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
        Rectangle{//竖
            width: minimap.m_linewidth
            height:minimap.m_height
            color: "aqua"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        Rectangle{//横
            width: minimap.m_width
            height: minimap.m_lineheight
            color: "aqua"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        Rectangle{//横
            width: minimap.m_width
            height: minimap.m_lineheight
            color: "aqua"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
        Rectangle{//横
            width: minimap.m_width
            height: minimap.m_lineheight
            color: "aqua"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
        Rectangle{//横
            width: minimap.m_width
            height: minimap.m_lineheight
            color: "aqua"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

    }


}






