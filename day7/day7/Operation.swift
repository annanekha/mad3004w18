//
//  Addition.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation


class Operator: Arithmetic
{
    var oper: Character?
    
    init (n1: Int,n2: Int,oper: Character)
    {   super.init(n1: n1, n2: n2)
        
        self.oper = oper
    }
    
    required init(n1: Int, n2: Int) {
        super.init(n1: n1, n2: n2)
    }
    
    override func calculate()
    {
        let choice : Character = oper!
        print(">>>>>>>>>",choice)
        let result : Int
        print("calling function")
        
        switch choice
        {
        case "+":
            result = self.n1 + self.n2
            print("*******Result is = ",result)
        case "-":
            result = self.n1 - self.n2
            print("*******Result is = ",result)
        case "*":
            result = self.n1 * self.n2
            print("*******Result is = ",result)
        case "/":
            result = self.n1 / self.n2
            print("********Result is = ",result)
        default: print("Null")
            
        }
        
        
    }
}
