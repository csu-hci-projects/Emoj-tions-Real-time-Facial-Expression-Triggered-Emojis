//
//  EmojtionApp.swift
//  Shared
//
//  Created by Jake Mismas on 4/14/22.
//

import SwiftUI

@main
struct EmojtionApp: App {
    // connecting App Delegate
    @NSApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    
    // Status bar item
    var statusItem: NSStatusItem?
    
    // Popover
    var popOver = NSPopover()
    
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Menu View...
        let menuView = MenuView()
        
        // Creating PopOver
        popOver.behavior = .transient
        popOver.animates = true
        
        // Setting empty view controller and setting view as SwiftUI view...
        popOver.contentViewController = NSViewController()
        popOver.contentViewController?.view = NSHostingView(rootView: menuView)
        
        // Make View Main View...
        
        
        // Create status bar button
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        // Safe check if status button is available or not...
        if let MenuButton = statusItem?.button{
            
            MenuButton.image = NSImage(named: NSImage.Name("RobotEmojiSmall"))
            
            MenuButton.action = #selector(MenuButtonToggle)
            }
        }
    // Button action...
    @objc func MenuButtonToggle(sender: AnyObject){
        // For safe side...
        if popOver.isShown{
            popOver.performClose(sender)
        } else {
            if let menuButton = statusItem?.button{
                self.popOver.show(relativeTo: menuButton.bounds, of: menuButton, preferredEdge: NSRectEdge.minY)
                popOver.contentViewController?.view.window?.makeKey()
            }
        }
    }
}
