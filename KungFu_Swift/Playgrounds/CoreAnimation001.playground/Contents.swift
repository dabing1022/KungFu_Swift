//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//: build background image view
let kungfuImageView = UIImageView(image: UIImage(named: "kungfu"))
XCPlaygroundPage.currentPage.liveView = kungfuImageView

//: add mask
let maskLayer = CALayer()
maskLayer.contents = UIImage(named: "logo")?.CGImage
maskLayer.position = kungfuImageView.center
maskLayer.bounds = CGRectMake(0, 0, 20, 20)
kungfuImageView.layer.mask = maskLayer

kungfuImageView

let scaleAnimation = CAKeyframeAnimation(keyPath: "bounds")
scaleAnimation.beginTime = CACurrentMediaTime() + 1
scaleAnimation.duration = 4
let boundValue1 = NSValue(CGRect: maskLayer.bounds)
let boundValue2 = NSValue(CGRect: CGRect(x: 0, y: 0, width: 10, height: 10))
let boundValue3 = NSValue(CGRect: CGRect(x: 0, y: 0, width: 500, height: 500))
scaleAnimation.values = [boundValue1, boundValue2, boundValue3]
scaleAnimation.keyTimes = [0, 0.5, 1.0]
scaleAnimation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)]
scaleAnimation.fillMode = kCAFillModeForwards
scaleAnimation.removedOnCompletion = false
scaleAnimation.autoreverses = true
scaleAnimation.repeatCount = FLT_MAX
maskLayer.addAnimation(scaleAnimation, forKey: "maskAnimation")

