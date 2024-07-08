//
//  MenuBarAppTemplateConfig.swift
//  MenuBarAppTemplate
//
//  Created by Diab Neiroukh on 2024-07-08.
//

import Foundation

class MenuBarAppTemplateConfig {
    #if DEBUG
    var debugConfig: [String: Any] = [:]
    #endif
    var defaultConfig: [String: Any] = [:]
    let userDefaults = UserDefaults.standard

    init() {
        #if DEBUG
        debugConfig["exampleDouble"] = 1.0
        #endif
        defaultConfig["exampleBool"] = true
        defaultConfig["exampleDouble"] = 2.0
        defaultConfig["exampleString"] = "Lorem ipsum dorem..."
    }

    func get(key: String) -> Any? {
        let value = self.userDefaults.object(forKey: key)

        #if DEBUG
        if debugConfig[key] != nil {
            return debugConfig[key]
        }
        #endif

        if value == nil {
            if defaultConfig[key] != nil {
                NSLog("[MenuBarAppTemplateConfig/get()] Using default config for key, \(key), with value, \(String(describing: defaultConfig[key])).")
                return defaultConfig[key]
            } else {
                return nil
            }
        } else {
            return value
        }
    }

    func set(key: String, value: Any) {
        self.userDefaults.set(value, forKey: key)
        #if DEBUG
        NSLog("[MenuBarAppTemplateConfig/set()] Set key, \(key), of value, \(value), and type, \(type(of: value)).")
        #endif
    }
}
