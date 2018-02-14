//
//  error.swift
//  class activity
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

enum ticket: Error
{
    case notValidTicket
    case speedBreak
    case redLightBreak
    case seatBeltIssue
    case invalidLicense
}

struct check
{
    var type : String
    var speed : Double
    var Licenseissue : String
    var pass : String
    var license : String
    
}
