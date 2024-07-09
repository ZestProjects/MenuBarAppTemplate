# A Menu Bar Application Template

Want to build a Menu Bar tool on macOS but don't know where to start? Give this template a try.

## Where to start?

First, [set your Manu Bar icon](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/AppDelegate.swift#L21). You can use any [NSImage](https://developer.apple.com/documentation/appkit/nsimage) for the icon, by default this template selects a symbol from [SF Symbols](https://developer.apple.com/sf-symbols).

Then, [build your menu](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/MenuDelegate.swift#L13). By default, an [About dialog](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/MenuDelegate.swift#L16) (which additionally presents the contents of [Credits.html](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/Credits.html)) and a [Quit button](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/MenuDelegate.swift#L23) are added. Make sure to keep `menu.removeAllItems()` at the top of the `menuNeedsUpdate()` function otherwise you'll be appending menu items each time the menu is opened.

If you would like to add a seperator, use `menu.addItem(NSMenuItem.separator())`. For custom actions, add a selector method prefixed with `@objc` and a signature of `sender: NSMenuItem` to the `MenuDelegate` class.

Finally, add your application logic to [AppDelegate](). I reccomend adding a private function prefixed with `build` and appending it to [`applicationDidFinishLaunching()`](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/AppDelegate.swift#L14). You can utilise the `MenuBarAppTemplateConfig` class to easily get and set [UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults), including default options and overrides for `DEBUG` builds.

A few more things to do are to [set your application icon](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/Assets.xcassets/AppIcon.appiconset/Contents.json), [set the accent colour](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/Assets.xcassets/AccentColor.colorset/Contents.json), and [provide preview assets](https://github.com/ZestProjects/MenuBarAppTemplate/blob/main/MenuBarAppTemplate/Preview%20Content/Preview%20Assets.xcassets/Contents.json).

## Have a look at some examples.

This template is used in [Twenty³]() and [Screenshot2Clipboard]() (both coming soon).

## A deep dive into the structure.

TBD
