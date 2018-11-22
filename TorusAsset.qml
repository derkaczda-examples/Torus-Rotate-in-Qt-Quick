import QtQuick 2.0
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {

    property vector3d scale
    property RotationWrapper rotationWrapper
    property vector3d position
    property Transform transform

    PhongMaterial {
        id: torusAssetMaterial
    }

    Transform {
        id: torusAssetTransform

        //property vector3d rotAxis: rotationWrapper.axis
        //property real rotAngle: rotationWrapper.angle

        scale3D: scale
        translation: position
        /*rotation: fromAxisAndAngle(
                      rotAxis,
                      rotAngle
                  )*/

    }

    TorusMesh {
        id: torusAssetMesh
        radius: 5
        minorRadius: 1
        rings: 100
        slices: 20
    }

    components: [
        torusAssetMesh,
        torusAssetMaterial,
        (transform == 'undefined') ? torusAssetTransform : transform

    ]
}
