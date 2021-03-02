//设备列表按钮 设备按钮
import QtQuick 2.7
Item {
    id: root
    width: 57
    height: width*0.7719

    property bool    highlight: false                              //按钮高亮
    property string  text_number: "啊啊啊"                            //编号
    property string  text_date: "2020.20.20"                            //编号


    Image {//背景图
        id: image
        layer.smooth: true
        layer.enabled: true
        anchors.fill: parent
        layer.mipmap: true
        source: highlight?"qrc:/buttonsimple/手持终端-缩略列表图标0001.png":
                           "qrc:/buttonsimple/手持终端-缩略列表图标0003.png"
        Image {//手持图标
            id:icon
            layer.smooth: true
            layer.mipmap: true
            anchors.fill: parent
            source: highlight? "qrc:/buttonsimple/手持终端-缩略列表图标0002.png":
                               "qrc:/buttonsimple/手持终端-缩略列表图标0004.png"
        }
        Text {//序号
            id: number
            width: root.width
            height: root.width*0.4211
            text: text_number
            font.pointSize: 13
            font.family:fonts.fzzyjt.name
            anchors.horizontalCenterOffset: 0
            color:highlight?"#ffcc33":"#66ffff"
            anchors.top: parent.top
            anchors.topMargin: root.width*0.0175
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }Text {
            id: id_text_date
            width: root.width
            color: highlight?"#ffcc33":"#66ffff"
            text:text_date
            font.family:fonts.fzzyjt.name
            anchors.top: parent.top
            anchors.topMargin: root.width*0.4912
            anchors.bottom: parent.bottom
            anchors.bottomMargin: root.width*0.1404
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: root.width*0.1754
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            state:buttonterminal_state?"state_terminal":"state_date"
            states: [
                State {
                    name: "state_date"

                    PropertyChanges {
                        target: id_text_date
                        visible:true
                    }
                    PropertyChanges {
                        target: icon
                        visible:false
                    }
                },
                State {
                    name: "state_terminal"
                    PropertyChanges {
                        target: icon
                        visible:true
                    }
                    PropertyChanges {
                        target: id_text_date
                        visible:false
                    }
                }
            ]
        }
    }
}
