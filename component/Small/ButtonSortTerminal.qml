//飞机序号 排序按钮
import QtQuick 2.7

Item {
    id:root
    width: 63
    height: 33
    property string  m_text: "优先级"
    Image {
        id:background
        anchors.fill: parent
        layer.mipmap: true
        source: mousearea_.pressed?"qrc:/buttonsimple/调度中心-多选框-飞机0001.png": "qrc:/buttonsimple/调度中心-多选框-飞机0003.png"
    }

    MouseArea{
        id:mousearea_
        anchors.fill: parent
    }
    Text {
        id: text_
        color: "#ffcc33"
        text: "/"+m_text+"/"
        anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        font.family:fonts.fzzyjt.name
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

}
