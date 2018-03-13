//
//  ViewController.swift
//  PosTomato
//
//  Created by Tasuku Tozawa on 2018/03/14.
//  Copyright © 2018年 Tasuku Tozawa. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let windowSize = WindowController.defaultRect()
        self.view = NSView(frame: NSMakeRect(0, 0, windowSize.width, windowSize.height))
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

