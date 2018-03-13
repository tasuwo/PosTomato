//
//  WindowSizeCalculator.swift
//  PosTomato
//
//  Created by Tasuku Tozawa on 2018/03/14.
//  Copyright © 2018年 Tasuku Tozawa. All rights reserved.
//

import Foundation
import Cocoa

protocol WindowSizeCalculator {
    static func calcRect(screenSize: NSSize) -> NSRect
    static func defaultSize() -> NSSize
    static func defaultRect() -> NSRect
}

extension WindowSizeCalculator where Self: WindowController {
    static func calcRect(screenSize: NSSize) -> NSRect {
        return NSMakeRect(
            screenSize.width / 2 - defaultSize().width / 2,
            screenSize.height / 2 - defaultSize().height / 2,
            defaultSize().width,
            defaultSize().height
        )
    }
    
    static func defaultSize() -> NSSize {
        return NSSize(width: 400, height: 400)
    }
    
    static func defaultRect() -> NSRect {
        return NSRect(x: 0, y: 0, width: defaultSize().width, height: defaultSize().height)
    }
}
