//
//  main.swift
//  Access Control
//
//  Created by Anna Nekha Shabu on 2018-02-12.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

//print("Hello, World!")


//var objstud = student()
//objstud.display()
//objstud.display(message: "AN")

var p1 = PartTime()
//p1.setStudentName("Shabu")

class T: ExtendPartTime
{
    override init()
    {
        super.init()
        print("Display T")
    }
}

var t1 = T()


//Not possible as file private
//var s1 = Student()
//var f1 = FullTime()
