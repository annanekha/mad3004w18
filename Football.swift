//
//  Football.swift
//  MidTerm
//
//  Created by Anna Nekha Shabu on 2018-02-07.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

class Football : Sports, Display{
    
    func IDisplay()
        
    {
        
        print("Sports type: ",objs1.stype)
        print("No of Players: ",objs1.nop)
        print("No. of minutes : \(self.no_mins) mins")
        print("No. of minutes played : ",self.nom_played )
        print("No. of goals scored : \(self.no_goals)")
        print("Total red card issued : ",self.tot_redcards )
        print("Penalty time : \(self.p_time) mins")
        print("Penalty shootout goals : ",self.p_shootout )
        
        
    }
    
    
    var no_mins: Int
    var nom_played: Int
    var no_goals: Int
    var tot_redcards: Int
    var p_time: Int
    var p_shootout: Int
    
    
    init(stype: String, nop: Int, no_mins: Int, nom_played: Int, no_goals: Int, tot_redcards: Int, p_time: Int, p_shootout: Int)
    {
        
        self.no_mins = no_mins
        self.nom_played = nom_played
        self.no_goals = no_goals
        self.tot_redcards = tot_redcards
        self.p_time = p_time
        self.p_shootout = p_shootout
        super.init(stype: stype, nop: nop)
        
    }
    
    required init(stype: String, nop: Int) {
        fatalError("init(stype:nop:) has not been implemented")
    }
    
    
    
    
    override func displays()
    {
        print("Sports type: ",objs1.stype)
        print("No of Players: ",objs1.nop)
        print("No. of minutes : \(self.no_mins) mins")
        print("No. of minutes played : ",self.nom_played )
        print("No. of goals scored : \(self.no_goals)")
        print("Total red card issued : ",self.tot_redcards )
        print("Penalty time : \(self.p_time) mins")
        print("Penalty shootout goals : ",self.p_shootout )
        
    }
   
    func updategoals()
    {
        self.no_goals += 1
        print("Goals = ",self.no_goals)
    }
    
}




