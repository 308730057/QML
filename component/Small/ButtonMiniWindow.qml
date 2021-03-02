//弹窗按钮
import QtQuick 2.7

Item {
    id:root
    width: 79
    height: 25
    property alias  text: text_.text
    property bool  highlight: false
    Image {
        id:background
        anchors.fill: parent
        layer.mipmap: true
        source: highlight?"qrc:/buttonsimple/调度中心-弹出窗口-确认按钮0001.png": "qrc:/buttonsimple/调度中心-弹出窗口-确认按钮0002.png"
    }


    Text {
        id: text_
        color:highlight?"#ffcc33":"#66ffff"
        text: ""
        anchors.fill: parent
        visible: true
        verticalAlignment: Text.AlignVCenter
        font.family:fonts.fzzyjt.name
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
    }

}

/*##^##
Designer {
    D{i:4;anchors_height:18;anchors_width:36}
}
##^##*/
