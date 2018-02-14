//
//  TestB.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

class TestB: TestA{
    var n2: Int?
    
    override func display(){
        print("Inside Class B")
    
    }
    override func displayValue() {
        print("Value of n1 : \(self.n1)")
        print("Value of n2 : \(self.n2!)")
    }
}
