//
//  DemoConst.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/7/20.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

struct DemoConst {
    struct Application {
        static let screen_width = UIScreen.mainScreen().bounds.size.width
        static let screen_height = UIScreen.mainScreen().bounds.size.height
        static let screen_frame = UIScreen.mainScreen().bounds
        static let screen_centerX = Application.screen_width * 0.5
        static let screen_centerY = Application.screen_height * 0.5
        static let screen_center = CGPoint(x: Application.screen_centerX, y: Application.screen_centerY)
    }
    
    struct Logo {
        static let logoBackgroundAlpha: CGFloat = 0.3
    }
}