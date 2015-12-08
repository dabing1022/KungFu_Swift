//
//  Bool.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/12/8.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation

internal extension Bool {
    mutating func toggle() -> Bool {
        self = !self
        return self
    }
}