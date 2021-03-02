//地块信息列表
import QtQuick 2.7
import QtQuick.Controls 2.4
//import QtQuick.Extras 1.4
import QtGraphicalEffects 1.14
import Small 1.0
import QtQuick.Controls.Styles 1.4
Item{
    id:root
    width:column_airlist.width+6
    height: 916
    property int  currentIndex: -1  //当前index
    property int  __listspacing: 21  //本文件 列表间距

    states: [
        State {
            name: "right"
            AnchorChanges{
                target: scrollbar_
                anchors.left: flickable.right
                anchors.right: parent.right
            }
            PropertyChanges {
                target: scrollbar_
                anchors.leftMargin: 3
                anchors.rightMargin: 0
            }
        },
        State {
            name: "left"
            AnchorChanges{
                target: scrollbar_
                anchors.left:parent .left
                anchors.right: flickable.left
            }
            PropertyChanges {
                target: scrollbar_
                anchors.leftMargin: 0
                anchors.rightMargin: 3
            }
        }
    ]
    Flickable{//航线任务列表
        id:flickable
        width: column_airlist.width
        anchors.horizontalCenter: parent.horizontalCenter
        clip: true
        contentWidth:column_airlist.width
        contentHeight: column_airlist.height
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.top: id_msearchbar_.bottom
        anchors.topMargin: 5
        flickableDirection:Flickable.VerticalFlick
        Behavior on contentY{PropertyAnimation {duration: 100}}
        Column{
            id:column_airlist
            width: 132
            spacing: __listspacing
            Repeater{
                id:repater_airlist
                model: 252
                ButtonAirlist{
                    id:buttonairlist_
                    //highlight: currentIndex == index? true:false
                    text_number: index
                    property int  temp1 : 1
                    MouseArea{
                        id:mouse_button
                        anchors.fill: parent
                        onClicked: {
                            if(buttonairlist_.temp1 > 5)
                            {
                                buttonairlist_.temp1 = 1
                                buttonairlist_.state_background = ++buttonairlist_.temp1
                                buttonairlist_.state_backgroundChanged()
                            }
                            else{
                                buttonairlist_.state_background = ++buttonairlist_.temp1
                                buttonairlist_.state_backgroundChanged()
                            }
                            //                            currentIndex = index
                        }
                    }
                }
            }

        }
        onMovementEnded:{

            flickable.contentY=((repater_airlist.itemAt(0).height+__listspacing)*Math.round
                                ((flickable.visibleArea.yPosition*column_airlist.height)/(repater_airlist.itemAt(0).height+__listspacing)))
        }
    }
    ScrollBar{
        id:scrollbar_
        anchors.bottom: flickable.bottom
        anchors.bottomMargin: 9
        anchors.top: flickable.top
        anchors.topMargin: 0
        minimumSize: 0.1
        size: flickable.height/column_airlist.height
        position:flickable.visibleArea.yPosition
        enabled: false
        clip: true
        contentItem: Rectangle{
            color: "#66ffff"
        }
    }

    MSearchbar{
        id: id_msearchbar_
        width: column_airlist.width
        height: 33
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10

    }
}
