//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//: Slide Menu

let viewController = UIViewController()
viewController.title = "SlideMenuDemo"
viewController.view.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.3)
XCPlaygroundPage.currentPage.liveView = viewController

let sideView = UIView(frame: CGRect(x: -100, y: 0, width: 100, height: viewController.view.bounds.size.height))
sideView.backgroundColor = UIColor.greenColor()
viewController.view.addSubview(sideView)

UIView.animateWithDuration(0.3, animations: { () -> Void in
    sideView.frame = CGRectMake(0, 0, 100, sideView.bounds.size.height)
})



class TestView: UIView {
    var diff: CGFloat = 0.0
    var displayLink: CADisplayLink!
    var helperView1 = UIView(frame: CGRect(x: -40, y: 0, width: 40, height: 40))
    var helperView2 = UIView(frame: CGRect(x: -40, y: 100, width: 40, height: 40))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(helperView1)
        helperView1.hidden = true
        
        addSubview(helperView2)
        helperView2.hidden = true
        
        displayLink = CADisplayLink(target: self, selector: Selector("displayLinkAction:"))
        displayLink.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func displayLink(display: CADisplayLink) {
        let layer1 = helperView1.layer.presentationLayer()!
        let layer2 = helperView2.layer.presentationLayer()!
        
        diff = layer1.valueForKeyPath("frame")!.CGRectValue.origin.x - layer2.valueForKeyPath("frame")!.CGRectValue.origin.x
        
        self.setNeedsDisplay()
    }

    override func drawRect(rect: CGRect) {
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 0, y: 0))
        path.addLineToPoint(CGPoint(x: 70, y: 0))
        path.addQuadCurveToPoint((CGPoint(x: 70, y: 100)), controlPoint: CGPoint(x: 100, y: 50))
        path.addLineToPoint(CGPoint(x: 0, y: 100))
        path.closePath()
        
        let context = UIGraphicsGetCurrentContext()
        CGContextAddPath(context, path.CGPath)
        UIColor.greenColor().set()
        CGContextFillPath(context)
    }
}

let testView = TestView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
XCPlaygroundPage.currentPage.liveView = testView
