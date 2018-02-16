//
//  main.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

var obj = TestA()
//obj.n1 = 20
obj.display()
obj.displayValue()

var obj1 : IDisplay = TestA() //implementing one protocol
obj1.display()

obj1 = obj as TestA //type castig
obj1.display()

var  obj2 = TestB()
obj2.n1 = 30
obj2.n2 = 40
obj2.display()
obj2.displayValue()

var obj3 = Arithmetic(n1: 20, n2: 30)
obj3.calculate()

var objop = Operator(n1:35, n2:45,oper: "+")
objop.calculate()


let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"

var s = "Anna Nekha"
print(">>>>>>>>>>>>",s.length)
print(s.vowels)
print(s.consonants)

var k = 19
var h: Bool
h = k.isPrime
if (h == true)
{
    print("Prime")
    
}
else{
    print("Not Prime")
}


