import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Templates 2.2 as T

Button {
    id:btn
    property string color1: "#bbffff"
    property string color2: "#00c0f5"
    property string fillNormal: "white"
    property string fillPressed: "red"
    property bool running: false
    //color:transprant
//    background: Rectangle{
//        gradient: Gradient {
//            GradientStop {
//                position: 0
//                color: color1
//            }
//            GradientStop {
//                position: 0.6
//                color: color2
//            }
//        }
//        border.width:height * 0.02
//        border.color:"gray"
//        radius:height / 5
//    }
    Image{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        source: btn.running? "../icons/power_press.png":"../icons/power.png"
    }
    Canvas{
        id: cv
        //property bool pressed: false
        anchors.fill: parent


//        onPaint: {
//            var ctx = getContext("2d");
//            ctx.reset();
//            var centreX = width/2;
//            var centreY = height/2;
//            ctx.strokeStyle = cv.pressed?"red":"white";
//            ctx.beginPath();
//            ctx.fillStyle = "red";
//            ctx.lineWidth = 10;
//            ctx.arc(centreX, centreY, width / 4, -Math.PI*4/9, Math.PI*13/9, false);
//            ctx.stroke();
//            ctx.moveTo(centreX, centreY);
//            ctx.lineTo(centreX,centreY - width/4);
//            ctx.stroke();

//        }
        MouseArea{
            anchors.fill: parent
            onReleased: {
                cv.pressed=false
                console.log("released")
                //cv.requestPaint()
            }

            onPressed: {
                cv.pressed=true
                console.log("Pressed")
                //cv.requestPaint()
            }
        }
    }
}
