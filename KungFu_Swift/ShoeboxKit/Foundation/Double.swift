//
//  Double.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/8/14.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation

internal extension Double {
    var km: Double { return self * 1_000.0 }
    var m : Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}