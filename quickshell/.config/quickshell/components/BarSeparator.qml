import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes
import Quickshell

Shape {
  id: separator
  Layout.fillWidth: true
  ShapePath {
    strokeWidth: 4
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
