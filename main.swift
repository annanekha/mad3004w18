//
//  main.swift
//  miscellaneous
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

//print("Hello, World!")

var e1 = Employee()
print(Employee.getNoOfObjects())
e1.greet(name: "Sonal")
var e2 = Employee()
print(Employee.getNoOfObjects())

var p1 = PartTime()
p1.greet(name: "p1")

//p1.getNoOObjects()

e1 = p1
e1.greet(name: "Name")

var r1 : Employee
r1 = Employee()
r1.greet(name : "part Time")

r1 = PartTime()
r1.greet(name: "Part Time")

//Reference
p1 = e1 as! PartTime
p1.greet(name: "Naveen")
