import QtQuick 2.7
import QtQuick.Controls 2.4
import QtQuick.Extras 1.4
import QtGraphicalEffects 1.14
import Small 1.0
import QtQuick.Controls.Styles 1.4
//Rectangle {
//    id: root
//    width: 500
//    height: 800//60*pathView.model
//    color: "black";



//    Component {
//        id: rectDelegate;

//            Rectangle{
//            color: "red"
//            width: 100
//            height: 50
//            Text {
//                id: name
//                text:index
//            }
//            }

//    }

//    PathView {
//        id: pathView;
//        x: 38
//        width: 424
//        height: root.height
//        clip: true
//        anchors.horizontalCenter: parent.horizontalCenter
////        anchors.verticalCenterOffset: 1
//        anchors.verticalCenter: parent.verticalCenter
////      interactive :true
////        offset :0.1
//        model: 9
//        pathItemCount: 3
//        preferredHighlightBegin: 0.5;
//        preferredHighlightEnd: 0.5;
////        highlightRangeMode: PathView.NoHighlightRange


////        maximumFlickVelocity: 1000

//        delegate: rectDelegate;

//        path: pathVertical

//        Path {
//            id:pathVertical
//            property int height: root.height
//            startX: width/2
//            startY: 0
//            PathAttribute { name: "t_scale"; value: 0.5}
//            PathAttribute { name: "itemZ"; value: 0}
//            PathLine { x: pathVertical.startX; y: height*0.5}

//            PathAttribute { name: "t_scale"; value: 0.5}
//            PathAttribute { name: "itemZ"; value: 1}
//            PathLine { x: pathVertical.startX; y: height}

//        }

//        focus: true
////        Keys.onLeftPressed: decrementCurrentIndex();
////        Keys.onRightPressed: incrementCurrentIndex();
//    }
//}
Tumbler {
    id:column_airlist
    x: 3
    y: 49
    width: 150
    height: 867
    anchors.horizontalCenter: parent.horizontalCenter//863//*visibleItemCount/9

    TumblerColumn{
        model: 2
        width: 132

    }
//    TumblerColumn{
//        model: 25
//        width: 132

//    }


    style: TumblerStyle{
        visibleItemCount: 9
        separator: Rectangle{
            color: "gold"
            width: 20
            height: 500
        }
        frame : Rectangle{
           // implicitWidth : 2
            color: "green"
            opacity: 0.6
        }
//        highlight: Rectangle{
//                        width: thumberp.width/3;
//                        height: 40
//                        color: "red"
//}
        background:  Rectangle{
                      color: "yellow"
                  }

        foreground: Rectangle{
                       color: "black"
                       opacity: 0.3
                       gradient: Gradient {
                                GradientStop { position: 0.2; color: "lightsteelblue" }
                                GradientStop { position: 0.5; color: "blue" }
                                 GradientStop { position: 0.8; color: "lightsteelblue" }
                            }
                   }
        delegate:

            Rectangle{
                id:pp
                width: 130
                height: 50
                color: "red"
                border.color: "aqua"

        }

    }

    //            Behavior on currentIndex{PropertyAnimation {duration: 100}}
    Component.onCompleted: {
        //                column_airlist.positionViewAtIndex(8, Tumbler.Center)
        //                 column_airlist.currentIndex = column_airlist.count/2
    }
}


