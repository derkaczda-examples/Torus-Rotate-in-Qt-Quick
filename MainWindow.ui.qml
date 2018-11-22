import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Scene3D 2.0

Item {
    Rectangle {
        id: sceneArea
        width: parent.width
        height: parent.height
        anchors.fill: parent
        anchors.margins: 0
        color: "#0a01b5"

        Scene3D {
            id: scene3d
            anchors.fill: parent
            anchors.margins: 0
            focus: true
            aspects: ["input", "logic"]
            cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

            MainWindow3dRootNode {
                id: scene3dRootNode
            }
        }
    }
}

