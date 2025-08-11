import QtQuick
import Quickshell
import Quickshell.Wayland

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
    source: "root:/assets/wallhaven-exl88k.png"
  }
}

