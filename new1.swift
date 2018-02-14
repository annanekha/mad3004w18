//
//  new1.swift
//  day10
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class RequestLimitIncrease{
    var requestsReceived = [
        "S1100" : requestsFromAccount(type: "Saving", balance: 1234.09, reqStatus: "In Process"),
        "S1200" : requestsFromAccount(type: "Saving", balance: 5080.09, reqStatus: "In Process"),
        "S1300" : requestsFromAccount(type: "Chequing", balance: 10000.09, reqStatus: "In Process"),
        "S1400" : requestsFromAccount(type: "Saving", balance: 5400, reqStatus: "Approved")]
    
    
    func testEligibility(accountNo acno: String) throws {
        
    }
    
    func increaseLimit(accountNo acno: String) throws {
        guard let reqAcc = requestsReceived[acno] else{
            throw limitIncreaseError.ineligible
        }
        
        guard reqAcc.type == "Saving" else{
            throw limitIncreaseError.noSavingAccount
        }
        
        guard reqAcc.balance >= 5000 else{
            throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000-reqAcc.balance)
        }
        
        guard reqAcc.reqStatus == "In progress" else{
            throw limitIncreaseError.statusAlreadyApproved
        }
        
        var approvedRequest = reqAcc
        approvedRequest.reqStatus = "Approved"
        print("Your request is approved.")
    }
}

