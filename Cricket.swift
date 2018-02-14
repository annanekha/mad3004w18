//
//  Cricket.swift
//  MidTerm
//
//  Created by Anna Nekha Shabu on 2018-02-07.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation
class Cricket : Sports, Display{
    
    func IDisplay()
        
    {
       
        print("Sports type: ",objs1.stype)
        print("No of Players: ",objs1.nop)
        print("Match format :",self.format)
        print("No of overs per innings :",self.no_overs )
        print("Total wickets down :",self.wickets )
        print("Total Runs :",self.t_runs )
        print("total overs played :",self.p_overs )
        print("Average run Rate: ",self.avgrn )
        
    }
    
    var format: String = ""
    var no_overs: Int
    var wickets: Int
    var t_runs: Int
    var p_overs: Int
    var avgrn: Double = 0
    
    func calc() -> Double
    {
        let result: Double = Double(t_runs)/Double(no_overs)
        
        if (result<0)
        {
            return 0
        }
        else
        {
            return (result)
        }
    }
    

//    required init (stype: String, nop: Int){
//            super.init(stype: stype, nop: nop)
//        }
    
    
    
    init(stype: String, nop: Int, format: String, no_overs: Int, wickets: Int, t_runs: Int, p_overs: Int)
        {
            
            self.format = format
            self.no_overs = no_overs
            self.wickets = wickets
            self.t_runs = t_runs
            self.p_overs = p_overs
           super.init(stype: stype, nop: nop)
            self.avgrn = calc()
            
        }
    
    required init(stype: String, nop: Int) {
        fatalError("init(stype:nop:) has not been implemented")
    }
    
    
    
  
    override func displays()
        {
            print("Match format : ",self.format)
            print("No of overs per innings : ",self.no_overs )
            print("Total wickets down : ",self.wickets)
            print("Total Runs : ",self.t_runs )
            print("total overs played : ",self.p_overs)
            print("Average run Rate : ",self.avgrn )
        
        }
   
    func update()
    {
        self.wickets += 1
        print("Wickets down = ",self.wickets)
    }
    
    
        
}


