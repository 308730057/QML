//地块操作列表
import QtQuick 2.7
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
import Small 1.0
Item{
    id:root
    width: 500
    height: row_airlist.height+10

    property int  currentIndex: 0  //当前index
    property bool  state_listairline: true  //当前状态

    property int  __listspacing: 15  //本文件 列表间距

    Flickable{//航线任务列表
        id:flickable
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        clip: true
        contentWidth:row_airlist.width
        contentHeight: row_airlist.height
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        flickableDirection:Flickable.HorizontalFlick
        Behavior on contentX{PropertyAnimation {duration: 100}}
        onMovementEnded:{

            contentX=((repater_airlist.itemAt(0).width+__listspacing)*Math.round
                      ((flickable.visibleArea.xPosition*row_airlist.width)/(repater_airlist.itemAt(0).width+__listspacing)))

        }
        Row{
            id:row_airlist
            height: 30
            spacing: __listspacing
            Repeater{
                id:repater_airlist
                model: 8
                ButtonAirlineFunction{
                    id:buttonairlist_
                    highlight: mouse_button.pressed? true:false
                    MouseArea{
                        id:mouse_button
                        anchors.fill: parent
                        onClicked: {
                        }

                    }

                }


            }
        }

    }

}


/*##^##
Designer {
    D{i:1;anchors_width:500}
}
##^##*/
