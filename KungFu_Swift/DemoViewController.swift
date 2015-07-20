//
//  DemoViewController.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/7/20.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    let logoImageView = UIImageView(image: UIImage(named: "SplashLogo"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(logoImageView)
        logoImageView.center = DemoConst.Application.screen_center
        logoImageView.alpha = DemoConst.Logo.logoBackgroundAlpha
    }
}
