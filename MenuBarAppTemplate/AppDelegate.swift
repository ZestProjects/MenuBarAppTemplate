//
//  AppDelegate.swift
//  MenuBarAppTemplate
//
//  Created by Diab Neiroukh on 2024-07-08.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    let menuDelegate = MenuDelegate()
    lazy var statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.buildMenu()
    }

    func buildMenu() {
        self.menuDelegate.menu.delegate = self.menuDelegate
        if let button = self.statusItem.button {
            button.image = NSImage(systemSymbolName: "app.dashed", accessibilityDescription: nil)
        }
        self.statusItem.menu = self.menuDelegate.menu
    }
}
