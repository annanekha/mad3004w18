//
//  main.swift
//  day10
//
//  Created by Anna Nekha Shabu on 2018-02-14.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

//gives the fatal error but we havnt handled the error
//throw limitIncreaseError.ineligible
//var obj1 = RequestLimitIncrease()
//try obj1.increaseLimit(acno = "S1100")
var processRequest = RequestLimitIncrease()

//to process whole enumeration
do{
    try processRequest.increaseLimit(accountNo: "S1200")
    //}catch is limitIncreaseError{
    //    print("Something wrong with your account")
    //}
    //for individual accessing
}catch limitIncreaseError.insufficientBalance {
    print("You don't have sufficient balance.")
}catch limitIncreaseError.ineligible {
    print("You don't have account with us")
}catch limitIncreaseError.noSavingAccount {
    print("Limit increase is only available to Saving accounts.")
}catch limitIncreaseError.statusAlreadyApproved{
    print("Your request is already Approved")
}
catch {
    print("Unexpected Error.")
}

