//
//  UIView+IBInspectable.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/8/13.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}

