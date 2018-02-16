//
//  error handling.swift
//  day10
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

//Error Handling
enum limitIncreaseError: Error{
    case statusAlreadyApproved
    case insufficientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
}

struct requestsFromAccount{
    var type: String
    var balance: Double
    var reqStatus: String
}
