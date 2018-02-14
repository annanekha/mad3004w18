//
//  Penalty.swift
//  class activity
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation
class Penalty
{
    var type =
        [
            "T1" : check(type : "speedBreak", speed : 60, Licenseissue : "4", pass : "Y", license : "Valid"),
            "T2" : check(type : "redlight", speed : 40, Licenseissue : "2", pass : "N", license : "Valid"),
            "T3" : check(type : "seatBelt", speed : 50, Licenseissue : "4", pass : "Y", license : "Valid"),
            "T4" : check(type: "invalidlicense", speed : 40, Licenseissue : "4", pass : "Y", license : "Invalid")
    ]
    
    func tickettype(number tnumber : String) throws
    {
        guard let check = type[tnumber]
            else
        {
            throw ticket.notValidTicket
        }
        
        guard check.type == "redlight" && check.Licenseissue >= "3"
            else
        {
            throw ticket.redLightBreak
        }
        
        guard check.type == "speeding" && check.speed <= 50
            else
        {
            throw ticket.speedBreak
        }
        
        guard check.type == "seatbelt" && check.pass == "N"
            else
        {
            throw ticket.seatBeltIssue
        }
        
        guard check.type == "invalidlicense" && check.license == "Valid"
            else
        {
            throw ticket.invalidLicense
        }
        
        
    }
}
