import QtQuick 2.0

Rectangle {
    id: rectangle2
    width: 640
    height: 480

    signal dropped()
    onDropped {

    }

    Row {
        id: videos
        width: 268
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
    }

    Rectangle {
        id: rectangle1
        color: "#000000"
        anchors.left: videos.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.leftMargin: 0

        MouseArea {
            id: urlDropTarget
            anchors.fill: parent


        }
    }
}
