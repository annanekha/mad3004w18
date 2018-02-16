//
//  Arithmetic.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation
class Arithmetic: ICalculate{
    var n1: Int
    var n2: Int
    
    required init(n1: Int, n2: Int) {
        self.n1 = n1
        self.n2 = n2
    }
    func calculate(){
        let result = self.n1 + self.n2
        print("Result = \(result)")
    }
}
