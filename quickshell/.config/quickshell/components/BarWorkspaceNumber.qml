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
      case 3: return "THREE";
      case 4: return "FOUR";
      case 5: return "FIVE";
      case 6: return "SIX";
      case 7: return "SEVEN";
      case 8: return "EIGHT";
      case 9: return "NINE";
      case 10: return "TEN";
      default: return id;
    }
  }
}
