//
//  static.swift
//  miscellaneous
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class Employee {
    
    let MIN_PAY = 11.60
    var a : String?
    
    static var noOfObject = 0
    init()
    {
        Employee.noOfObject += 1
        
    }
    
    static func getNoOfObjects() -> Int
    {
        noOfObject = 10
        return 0
    }
    
    func greet(name: String)
    {
        print("Employee :: Want to join the team? \(name)")
    }
    
    deinit
    {
        print("Employee Denit")
    }
}

class PartTime : Employee
{
    override func greet(name : String)
    {
        print("Part Time :: Want to work full time ?",name)
    }
    
    deinit
    {
    print("Part Time")
    }
    
}


