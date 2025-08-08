import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes
import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import Quickshell.Wayland

PanelWindow {
  id: root
  color: "transparent"
  PanelWindow {
    id: bg
    exclusionMode: ExclusionMode.Ignore
    WlrLayershell.layer: WlrLayer.Background
    anchors {
      top: true
      left: true
      right: true
      bottom: true
    }
    Image {
      id: bgImg
      anchors.fill: parent
      fillMode: Image.PreserveAspectCrop
      source: "./wallhaven-2e2xyx.jpg"
    }
  }
  PanelWindow {
    id: bar
    color: "transparent"
    implicitHeight: 60
    WlrLayershell.layer: WlrLayer.Top
    anchors {
      top: true
      left: true
      right: true
    }
    margins {
      left: 20
      right: 20
    }
    RowLayout {
      width: parent.width
      height: parent.height
      spacing: 16
      Text {
        font.family: "Courier"
        font.pixelSize: 40
        font.bold: true
        color: "#33ccff"
        text: { // TODO: Animation
          const id = Hyprland.focusedWorkspace?.id ?? 1
          switch (id) {
            case 1: return "One";
            case 2: return "Two";
            case 3: return "Three";
            case 4: return "Four";
            case 5: return "Five";
            case 6: return "Six";
            case 7: return "Seven";
            case 8: return "Eight";
            case 9: return "Nine";
            case 10: return "Ten";
            default: return id;
          }
        }
      }
      Shape {
        id: separator
        Layout.fillWidth: true
        ShapePath {
          strokeWidth: 6
          strokeColor: "#33ccff"
          fillColor: "#33ccff"
          startX: 0
          startY: separator.height / 2
          PathAngleArc {
            centerX: 0
            centerY: separator.height / 2
            radiusX: 6
            radiusY: 6
            startAngle: 0
            sweepAngle: 360
          }
          PathLine {
            x: separator.width
            y: separator.height / 2
          }
          PathAngleArc {
            centerX: separator.width
            centerY: separator.height / 2
            radiusX: 6
            radiusY: 6
            startAngle: 0
            sweepAngle: 360
          }
        }
      }
      Text {
        id: clock
        font.family: "Courier"
        font.pixelSize: 40
        font.bold: true
        color: "#33ccff"
        Process {
          id: dateProc
          command: ["date", "+%H:%M:%S"]
          running: true
          stdout: SplitParser {
            onRead: data => clock.text = data
          }
        }
        Timer {
          interval: 1000
          running: true
          repeat: true
          onTriggered: dateProc.running = true
        }
      }
    }
  }
}
