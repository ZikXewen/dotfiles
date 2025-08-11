import QtQuick
import Quickshell.Hyprland

Text {
  font.family: "Courier"
  font.pixelSize: 40
  font.bold: true
  color: "#33ccff"
  text: { // TODO: Animation
    const id = Hyprland.focusedWorkspace?.id ?? 1
    switch (id) {
      case 1: return "ONE";
      case 2: return "TWO";
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
