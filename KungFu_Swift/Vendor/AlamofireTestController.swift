//
//  AlamofireTestController.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/12/16.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireTestController: DemoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}