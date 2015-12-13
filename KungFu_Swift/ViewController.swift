//
//  ViewController.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/7/18.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import UIKit

class ViewController: DemoViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    var demoViewControllers: [[String]] = [
        ["UIKItDemoA", "IBDesignableDemoViewController"],
        ["CFDemoA", "BridgeOcController"],
        ["CFDemoA", "RealmTestController"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.bounds)
        tableView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "KungFu")
    }

    // MARK: UITableViewDelegate UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoViewControllers.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("KungFu", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.clearColor()
        cell.selectionStyle = .None
        let className = demoViewControllers[indexPath.row][1]
        cell.textLabel?.text = className
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let storyboardName = demoViewControllers[indexPath.row][0]
        let className = demoViewControllers[indexPath.row][1]
        
        let vc = UIStoryboard(name: storyboardName, bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier(className)
        vc.title = className
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

