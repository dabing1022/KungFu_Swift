//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

//: Slide Menu

let viewController = UIViewController()
viewController.title = "SlideMenuDemo"
viewController.view.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.3)
XCPlaygroundPage.currentPage.liveView = viewController

let sideView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: viewController.view.bounds.size.height))
sideView.backgroundColor = UIColor.greenColor()
viewController.view.addSubview(sideView)