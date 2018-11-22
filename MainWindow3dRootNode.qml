
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

import QtQuick 2.0 as QQ2

Entity {

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        nearPlane: 0.1
        farPlane: 1000.0
        position: Qt.vector3d(0.0, 0.0, 40.0)
        upVector: Qt.vector3d(0.0, 1.0, 0.0)
        viewCenter: Qt.vector3d(0.0, 0.0, 0.0)
    }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                camera: camera
                clearColor: "transparent"
            }
        },
        InputSettings {}
    ]

    Assets {
        id: assetContainer

        TorusAsset {
           id: torusAsset

           transform: Transform {
               id: torusTransform
               scale3D: Qt.vector3d(1,2,1)

               property real rotationAngle: 45
               rotation: fromAxisAndAngle(Qt.vector3d(1,1,0), rotationAngle)
           }
        }

        QQ2.NumberAnimation {
            target: torusTransform
            property: "rotationAngle"
            duration: 10000
            from: 0
            to: 360

            loops: QQ2.Animation.Infinite
            running: true
        }

    }

}
