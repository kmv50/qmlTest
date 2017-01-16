import QtQuick 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.0

Item {
    Button {
        id: button
        x: 177
        y: 72
        text: qsTr("Button")
    }

    TextField {
        id: textField
        x: 185
        y: 168
        text: qsTr("Text Field")
    }

    TextArea {
        id: textArea
        x: 58
        y: 267
        width: 327
        height: 68
        text: qsTr("Text Area")
    }

    SpinBox {
        id: spinBox
        x: 455
        y: 135
    }

    RangeSlider {
        id: rangeSlider
        x: 415
        y: 214
        first.value: 0.25
        second.value: 0.75
    }

    RadioDelegate {
        id: radioDelegate
        x: 41
        y: 147
        text: qsTr("Radio Delegate")
    }

    RadioButton {
        id: radioButton
        x: 54
        y: 214
        text: qsTr("Radio Button")
    }

    ProgressBar {
        id: progressBar
        x: 419
        y: 303
        value: 0.5
    }

    Slider {
        id: slider
        x: 58
        y: 360
        value: 0.5
    }

    ComboBox {
        id: comboBox
        x: 455
        y: 380
    }

    BusyIndicator {
        id: busyIndicator
        x: 311
        y: 380
    }

    GroupBox {
        id: groupBox
        x: 415
        y: 97
        width: 200
        height: 200
        title: qsTr("Group Box")
    }

    CheckBox {
        id: checkBox
        x: 319
        y: 92
        text: qsTr("Check Box")
    }

    Switch {
        id: switch1
        x: 48
        y: 82
        text: qsTr("Switch")
    }

}
