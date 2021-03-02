import QtQuick 2.5
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Canvas {
    id: canvas
    width: 300
    height: 300
    antialiasing: true
    property real currentValue: 0         //当前值
    visible: !(currentValue === 0)
    property color primaryColor: "#ffcc33"  //颜色
    property real centerWidth: width / 2    //中心
    property real centerHeight: height / 2  //中心
    property real radius:width*0.5        //半径
    property real linewidth: 100            //线宽
    property real minimumValue: 0           //最小值
    property real maximumValue: 100         //最大值

    property real angle: (currentValue - minimumValue-0.00001) / (maximumValue - minimumValue) * 2 * Math.PI    //角
    property real angleOffset: -Math.PI / 2 //初始位置

    onPrimaryColorChanged: requestPaint()
    onMinimumValueChanged: requestPaint()
    onMaximumValueChanged: requestPaint()
    onCurrentValueChanged: requestPaint()
    onAngleChanged: requestPaint()

    onPaint: {
        var ctx = getContext("2d");
        ctx.save();
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        ctx.beginPath();
        ctx.lineWidth =radius*2
        ctx.strokeStyle = primaryColor;
        ctx.arc(canvas.centerWidth,
                canvas.centerHeight,
                radius,
                angleOffset + canvas.angle,
                angleOffset + 2*Math.PI,true);
        ctx.stroke();

    }


//    Timer{
//        id: timer
//        interval: 100;
//        running: true;
//        repeat: true;
//        onTriggered: {
//            if(currentValue > 100) {
//                currentValue = 0;
//                running = false
//                return
//            }
//            currentValue += 2;
////            console.log(angle)
//        }
//    }
}
