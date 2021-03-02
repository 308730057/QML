//设备列表
import QtQuick 2.7
import Small 1.0
Item{
    id:root
    width: column_airlist.width+20 //列表宽度+左右间隔
    height: 395
    property int  currentIndex: 0  //当前index
    property int  listspacing: 7  //本文件 列表间距

    Flickable{//列表
        id:flickable
        width: 57
        anchors.horizontalCenterOffset: 0
        height:parent.height-20
        anchors.horizontalCenter: borderdown.horizontalCenter
        anchors.top: borderup.bottom
        anchors.topMargin:  0
        contentWidth:column_airlist.width
        contentHeight: column_airlist.height
        clip: true
        flickableDirection:Flickable.VerticalFlick
        Behavior on contentY{PropertyAnimation {duration: 100}}
        onMovementEnded:{
            flickable.contentY=((repater_airlist.itemAt(0).height+listspacing)*Math.round
                                ((flickable.visibleArea.yPosition*column_airlist.height)/(repater_airlist.itemAt(0).height+listspacing)))

        }
        Column{
            id:column_airlist
            spacing: listspacing
            Repeater{
                id:repater_airlist
                model: 50
                ButtonTerminalList{
                    id:buttonterminallist_
                    highlight: currentIndex == index? true:false
                    MouseArea{
                        id:mouse_button
                        anchors.fill: parent
                        onClicked:   {
                            currentIndex = index
                            buttonterminallist_.text_number = 666
                            listterminal_click = !listterminal_click
                        }
                    }

                }

            }
        }
    }
    Image {
        id: borderup
        width: flickable.width
        layer.smooth: true
        layer.mipmap: true
        anchors.top: parent.top
        anchors.topMargin: 3
        anchors.horizontalCenter: parent.horizontalCenter
        source:flickable.dragging?"qrc:/buttonsimple/手持终端-缩略列区域表边界0001.png": "qrc:/buttonsimple/手持终端-缩略列区域表边界0002.png"
    }
    Image {
        id: borderdown
        width: flickable.width
        anchors.top: flickable.bottom
        anchors.topMargin: 0
        layer.smooth: true
        layer.mipmap: true
        rotation: 180
        anchors.horizontalCenter: parent.horizontalCenter
        source: flickable.dragging?"qrc:/buttonsimple/手持终端-缩略列区域表边界0001.png": "qrc:/buttonsimple/手持终端-缩略列区域表边界0002.png"
    }
}


