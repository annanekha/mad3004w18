
//
//  Protocol.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

protocol IDisplay{
    func display()
}

protocol IDisplayValue{
    var n1: Int {get set}
    func displayValue()
}

protocol ICalculate {
    var n1: Int {get set}
    var n2: Int {get set}
    
    init(n1: Int, n2: Int)
}

//protocol IOperation {
//    <#requirements#>
//}

