//
//  Test.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation
class TestA: IDisplay, IDisplayValue{
    var n1: Int = 20
    func displayValue()
    {
        print("Value of n1 : \(self.n1)")
    }
    func display(){
        print("Inside class TestA")
    }
    
   // var n1: Int?
}
