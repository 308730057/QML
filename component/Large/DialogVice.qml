//显示窗口 下
import QtQuick 2.0
import Medium 1.0
import Small 1.0
Item {
    id:root
    width: 971
    height: 451//433
    property bool    buttonterminal_state:  true                              //true设备 false任务
    property string  title: "20 植保张三 2020.20.20"


    Image {
        x: -18
        y: -3
        rotation: 180
        source: "qrc:/buttonsimple/按钮栏指向箭头0001.png"
    }
    Image {
        id: background_bottom
        width: 499
        height: 47
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        source: "qrc:/buttonsimple/按钮栏指向分隔图标0001.png"
    }


    Canvas{

        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d");
            var bottom_width = root.width*0.047   //底中心宽
            var bottom_height = root.width*0.0463   //底中心宽
            var border_angle = 4    //边角 大小
            var arrow_angle = 40   //列表中心角
            ctx.strokeStyle = "#66ffff";
            ctx.lineWidth = 2;
            ctx.beginPath();
            ctx.moveTo(0, 1);
            ctx.lineTo(root.width*0.4654, 1);
            ctx.lineTo(root.width*0.4654+bottom_width,bottom_height+1);
            ctx.lineTo(root.width-border_angle, bottom_width);
            ctx.lineTo(root.width, bottom_width+border_angle);
            ctx.lineTo(root.width, root.height-border_angle);
            ctx.lineTo(root.width-border_angle, root.height);
            ctx.lineTo(border_angle, root.height);
            ctx.lineTo(0, root.height-border_angle);
            ctx.lineTo(0, arrow_angle);
            ctx.lineTo(arrow_angle*0.5,arrow_angle*0.53 );
            ctx.lineTo(0,2);

            ctx.closePath();
            ctx.stroke();
        }
    }

    FontList{id:fonts}
    Image {
        id:background
        y: 54
        width: 567
        height: 391
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 7
        layer.mipmap: true
        anchors.left: listterminal_.right
        anchors.leftMargin: -1
        source: "qrc:/buttonsimple/调度中心-弹出框内容栏-背景-0001.png"

    }
    ListTerminal{
        id:listterminal_
        x: 0
        listspacing: 5
        width: 77
        height: 360
        anchors.bottomMargin: 0
        anchors.topMargin: 2
        anchors.bottom: parent.bottom
        anchors.top: buttonairnumber.bottom
    }

    ListAirlineFunction{
        y: 8
        width: 332
        height: 40
        anchors.left: listterminal_.right
        anchors.leftMargin: 33

    }

    ButtonAirNumber{
        id: buttonairnumber
        anchors.top: parent.top
        anchors.topMargin: 53
        anchors.left: parent.left
        anchors.leftMargin: 7

    }

    ButtonFinalConfirmation{
        x: 861
        y: 393

    }

    Rectangle{//直角边框
        id: minimap
        color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 300
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.top: parent.top
        anchors.topMargin: 95
        anchors.right: background.right
        anchors.rightMargin: 10
        property int  m_height: 30          //竖 高度
        property int  m_linewidth: 2        //竖 宽度
        property int  m_width: 30           //横 宽度
        property int  m_lineheight: 2       //横 高度
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





/*##^##
Designer {
    D{i:5;anchors_x:68}D{i:6;anchors_x:68}D{i:7;anchors_width:373;anchors_x:7;anchors_y:3}
D{i:8;anchors_width:373;anchors_x:7;anchors_y:3}
}
##^##*/
