//
//  WindowController.swift
//  PosTomato
//
//  Created by Tasuku Tozawa on 2018/03/14.
//  Copyright © 2018年 Tasuku Tozawa. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {
    override init(window: NSWindow?) {
        super.init(window: window)
        
        self.window?.contentViewController = ViewController()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    }
}

// MARK: - WindowSizeCalculator
extension WindowController: WindowSizeCalculator {}
