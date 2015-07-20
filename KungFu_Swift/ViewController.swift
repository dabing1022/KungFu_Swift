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
    var demoViewControllers: [DemoViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.bounds)
        tableView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "KungFu")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableViewDelegate UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return demoViewControllers.count
        return 10
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("KungFu", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.text = "demo"
        cell.selectionStyle = .None
        
        return cell
    }

}

