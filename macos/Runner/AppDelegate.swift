import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }
<<<<<<< HEAD
=======

  override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
    return true
  }
>>>>>>> 4be8f24d7fd2fb53b2a066ba24bb8494fc94ffad
}
