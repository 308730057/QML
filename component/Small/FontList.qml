//字体列表
import QtQuick 2.7

Item {
    id:root
    property alias  fzzyjt: fzzyjt
    FontLoader{//方正综艺简体
        id:fzzyjt
        source: "qrc:/fonts/FZZYJT.TTF"
    }
}
