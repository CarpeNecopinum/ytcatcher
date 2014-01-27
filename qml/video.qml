import QtQuick 1.1

Rectangle {
    id: rectangle3
    width: 260
    height: 62
    radius: 0
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#ffffff"
        }

        GradientStop {
            position: 1
            color: "#403e3e"
        }
    }
    border.width: 2
    border.color: "#000000"

    Text {
        id: titleText
        x: 8
        y: 8
        width: 206
        height: 15
        text: parent.title
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 10
        font.bold: true
    }

    Rectangle {
        id: progressbarBack
        x: 8
        y: 29
        width: 206
        height: 25
        border.width: 1
        border.color: "#000000"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#000000"
            }

            GradientStop {
                position: 1
                color: "#ffffff"
            }
        }

        Rectangle {
            id: progressbar
            x: 17
            width: {parent.width * parent.parent.progress}
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#665fb5"
                }

                GradientStop {
                    position: 1
                    color: "#0f1129"
                }
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            transformOrigin: Item.Left
        }
    }

    Image {
        id: image1
        x: 220
        y: 15
        width: 32
        height: 32
        source: "qrc:/qtquickplugin/images/template_image.png"

        MouseArea {
            id: mousearea1
            anchors.fill: parent
        }
    }

    property real progress: 0.33
    property string title: "<Videotitle>"



}
