import Cocoa

func shell(_ command: String) -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.launchPath = "/bin/zsh"
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!

    return output
}

DistributedNotificationCenter.default.addObserver(
    forName: Notification.Name("AppleInterfaceThemeChangedNotification"),
    object: nil,
    queue: nil) { (notification) in
        print("updated with \(notification)")
        let light: Int = UserDefaults.standard.string(forKey: "AppleInterfaceStyle") == nil ? 1 : 0

        let _ = shell("/usr/local/bin/themeswitch \(light)")
}

NSApplication.shared.run()
