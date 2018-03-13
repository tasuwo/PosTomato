//
//  main.swift
//  PosTomato
//
//  Created by Tasuku Tozawa on 2018/03/14.
//  Copyright © 2018年 Tasuku Tozawa. All rights reserved.
//

import Foundation
import Cocoa

// alloc main app's delegate class
let delegate = AppDelegate()
// set as app's delegate
NSApplication.shared.delegate = delegate

// Start of run loop
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
