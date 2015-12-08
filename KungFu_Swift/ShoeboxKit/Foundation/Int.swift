//
//  Int.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/8/14.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation

internal extension Int {
    enum Kind {
        case Negative, Zero, Positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return .Zero
        case let x where x > 0:
            return .Positive
        default:
            return .Negative
        }
    }
    
    subscript(var digitIndex: Int) -> Int {
        var decimalBase = 1
        while digitIndex > 0 {
            decimalBase *= 10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
    
    mutating func square() {
        self = self * self
    }
    
    func repetitions(task: () -> ()) {
        for _ in 0..<self {
            task()
        }
    }
    
}