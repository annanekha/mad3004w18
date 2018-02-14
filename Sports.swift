//
//  Sports.swift
//  MidTerm
//
//  Created by Anna Nekha Shabu on 2018-02-07.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation
class Sports {
    var stype: String
    var nop: Int
    
    init()
    {
        stype = "Outdoor"
        nop = 11
    }
    
   required init(stype: String, nop: Int){
        self.stype = stype
        self.nop = nop
    }
    
    func displays(){
        print("Sports Type : ",stype)
        print("No of Players :", nop)
    }
}
