//
//  AppDelegate.swift
//  PosTomato
//
//  Created by Tasuku Tozawa on 2018/03/14.
//  Copyright © 2018年 Tasuku Tozawa. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var windowController: WindowController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let windowRect: NSRect
        if let screen = NSScreen.screens.first {
            let screenSize = screen.frame.size
            
            windowRect = WindowController.calcRect(screenSize: screenSize)
        } else {
            windowRect = WindowController.defaultRect()
        }

        self.windowController = WindowController(window: NSWindow(
            contentRect: windowRect,
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        ))
        
        NSApp.activate(ignoringOtherApps: true)
        self.windowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
}

