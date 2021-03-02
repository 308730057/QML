//地块列表按钮 航线按钮
import QtQuick 2.7
import QtGraphicalEffects 1.14
Item {
    id: root
    width: 132
    height: width*0.3864
    property string  text_name: "土地土地"
    property string  text_date: "2020.20.200"
    property string  text_number: "01"
    property bool  highlight: false                              //按钮高亮
    property int  state_background: 1                              //状态

    onState_backgroundChanged:  {
        switch(state_background)
        {
        case 1:
            background.state = "1"
            break
        case 2:
            background.state = "2"
            break
        case 3:
            background.state = "3"
            break
        case 4:
            background.state = "4"
            break
        case 5:
            background.state = "5"
            break
        default:
            background.state = "1"
            break

        }
    }


    Image {//背景图
        id:background
        anchors.fill: parent
        layer.mipmap: true
        visible: !background_progress.visible
//        source:highlight?"qrc:/buttonsimple/调度中心-列表按钮0002.png":"qrc:/buttonsimple/调度中心-列表按钮0001.png"
        state:aaa.pressed? "1":"2"
        MouseArea{
        anchors.fill: parent
        id:aaa
        }
        states:[ State {
                name: "1"
                PropertyChanges {
                    target: background
                    source:"qrc:/buttonsimple/界面按钮0009.png"
                }
            },
            State {
                name: "2"
                PropertyChanges {
                    target: background
                    source:"qrc:/buttonsimple/界面按钮0006.png"
                }
            },
            State {
                name: "3"
                PropertyChanges {
                    target: background
                    source:"qrc:/buttonsimple/调度中心-列表按钮0003.png"
                }
            },
            State {
                name: "4"
                PropertyChanges {
                    target: background
                    source:"qrc:/buttonsimple/调度中心-列表按钮0004.png"
                }
            },
            State {
                name: "5"
                PropertyChanges {
                    target: background
                    source:"qrc:/buttonsimple/调度中心-列表按钮0005.png"
                }
            }]
    }

    Image {//连接中 背景 进度条
        id: background_progress
        anchors.fill: parent
        source: "qrc:/buttonsimple/界面按钮进度条模式0001.png"
        visible: !(zhezhao.currentValue > 100 || zhezhao.currentValue === 0 )
        Image {
            id: background_black
            anchors.fill: parent
            visible: false
            antialiasing: true
            layer.mipmap: true
            source: "qrc:/buttonsimple/界面按钮进度条模式0002.png"
        }

        ProgressRound{
            id:zhezhao
            anchors.fill: parent
            currentValue: 50    //当前进度
            visible: false

        }
        OpacityMask{
            anchors.fill:parent
            source: zhezhao
            maskSource: background_black
            invert: true
        }
    }

FontList{id:fonts}
    Text {
        id: id_text_number
        color:highlight?"#ffcc33": "#66ffff"
        text: text_number
        font.pixelSize: root.width*0.2424
        font.family:fonts.fzzyjt.name
        layer.mipmap: true
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 7
        anchors.right: parent.right
        anchors.rightMargin: 75
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        id: id_text_name
        width: 63
        color: highlight?"#ffcc33": "#66ffff"
        text: text_name
        anchors.bottomMargin: 25
        anchors.topMargin: 10
        anchors.rightMargin: 8
        font.family:fonts.fzzyjt.name
        layer.mipmap: true
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: parent.top
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: root.width*0.0982
        elide: Text.ElideRight

    }

    Text {
        id: id_text_date
        x: 62
        width: 63
        color: highlight?"#ffcc33": "#66ffff"
        text: text_date
        clip: true
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.bottomMargin: 11
        anchors.topMargin: 26
        font.family:fonts.fzzyjt.name
        layer.mipmap: true
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: root.width*0.0804
    }

}



