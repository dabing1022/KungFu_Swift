//
//  BridgeOcController.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/12/8.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation

class BridgeOcController: DemoViewController {
    override func viewDidLoad() {
        let myOcClassView = MyOcClass(frame: CGRect(x: 100, y: 200, width: 100, height: 100))
        self.view.addSubview(myOcClassView)
        
        myOcClassView.changeColor(UIColor(colorLiteralRed: 0.0, green: 0.5, blue: 0.1, alpha: 1))
    }
    
}