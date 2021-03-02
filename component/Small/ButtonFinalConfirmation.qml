//最终确认按钮
import QtQuick 2.7

Item {
    id:root
    width: 100
    height: 30
    property alias  text: text_.text
    FontList{id:fonts}
    Image {
        id:background
        anchors.fill: parent
        layer.mipmap: true
        source: mousearea_.pressed?"qrc:/buttonsimple/调度中心-地面站信息框-最终确认按钮0002.png": "qrc:/buttonsimple/调度中心-地面站信息框-最终确认按钮0001.png"
    }

    MouseArea{
        id:mousearea_
        anchors.fill: parent

    }
    Text {
        id: text_
        color: "#66ffff"
        text: qsTr("确定执行")
        anchors.fill: parent
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
