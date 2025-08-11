import QtQuick
import Quickshell
import Quickshell.Io

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
