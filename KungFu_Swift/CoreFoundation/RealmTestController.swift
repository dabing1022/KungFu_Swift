//
//  RealmTestController.swift
//  KungFu_Swift
//
//  Created by ChildhoodAndy on 15/12/13.
//  Copyright © 2015年 ChildhoodAndy. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class RealmTestController: DemoViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a Dog object and then set its properties
        let myDog = Dog()
        myDog.name = "rex"
        myDog.age = 10
        
        // Create a Dog object from a dictionary
        let myOtherDog = Dog(value: ["name" : "dada",  "age" : 5])
        // Create a Dog object from an array
        let myThirdDog = Dog(value: ["didi", 4])
        
        print(myOtherDog.name + String(myOtherDog.age))
        print(myThirdDog.name + String(myThirdDog.age))
        
        // Instead of using already existing dogs...
        let aPerson = Person(value: ["Jane", 30, [myDog, myOtherDog, myThirdDog]])
        print(aPerson.dogs)
        
        // ...we can create them inline
        let bPerson = Person(value: ["Tomy", 25, [["haha", 2], ["dangdang", 3]]])
        print(bPerson.dogs)
    }
}

class Dog: Object {
    dynamic var name = ""
    dynamic var age = 0
}

class Person: Object {
    dynamic var name = ""
    dynamic var age = 1
    let dogs = List<Dog>()
}
