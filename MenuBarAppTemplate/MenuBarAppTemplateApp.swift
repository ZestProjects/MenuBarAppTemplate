//
//  MenuBarAppTemplateApp.swift
//  MenuBarAppTemplate
//
//  Created by Diab Neiroukh on 2024-07-08.
//

import SwiftUI

@main
struct MenuBarAppTemplateApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
