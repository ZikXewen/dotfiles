import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland

PanelWindow {
  id: bar
  color: "transparent"
  implicitHeight: 48
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
    anchors.fill: parent
    spacing: 20
    BarWorkspaceNumber {}
    BarSeparator {}
    BarClock {}
  }
}
