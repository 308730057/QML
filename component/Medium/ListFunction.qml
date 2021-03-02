//操作列表
import QtQuick 2.0
import Small 1.0
Item{
    id:root
    width:600
    height: 95
    property int  currentIndex: -1  //当前index
    property bool  ismoving:flickable.dragging

      property int  __listspacing: 3  //本文件 列表间距
    Flickable{//航线任务列表
        id:flickable
        clip: true
        height: row_airlist.height
        anchors.fill: parent
        flickableDirection:Flickable.HorizontalFlick
        contentWidth:row_airlist.width
        contentHeight: height
        Behavior on contentX{PropertyAnimation {duration: 100}}
        onMovementEnded:{
          contentX=((repater_airlist.itemAt(0).width+__listspacing)*Math.round
                                ((flickable.visibleArea.xPosition*row_airlist.width)/(repater_airlist.itemAt(0).width+__listspacing)))
                }
        Row{
            id:row_airlist
            anchors.verticalCenter: parent.verticalCenter
            spacing: __listspacing
            Repeater{
                id:repater_airlist
                model: 100
                ButtonFunction{
                    id:buttonairlist_
                    highlight: currentIndex == index? true:false
                    MouseArea{
                        id:mouse_button
                        anchors.fill: parent
                        onClicked: {
                            currentIndex = index

                        }
                    }

                }


            }
        }
    }
}

