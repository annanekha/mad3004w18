//
//  Customers.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation


class Customers: User, CustomersProtocol {
    
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    
    override init(){
        self.customerName = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
        super.init()
    }
    
    //Constructor with parameters
    //init with parameters
    init(Name: String, addr: String, e_ID: String, creditInfo: String, shipInfo: String, u_Id: String, pswd: String, loginInfo: String) {
        
        self.customerName = Name
        self.address = addr
        self.email = e_ID
        self.creditCardInfo = creditInfo
        self.shippingInfo = shipInfo
        super.init(u_Id: u_Id, pswd: pswd, loginInfo: loginInfo)
    }
    
    //Function to get register
    func register(uname: String, pswd: String, customer: Customers){
        logindatabase[uname] = pswd
        currentUser = uname
        userDatabase[uname] = customer
    }
    
    
    
    func login (uname: String, pswd: String) -> Bool
    {
        let a = User()
        let loginSuccessOrNot: Bool = a.verifyLogin(inputUserId: uname, inputPassword: pswd)
        return loginSuccessOrNot
    }
    
    //TODO: Make the customers accessible via getter and setters only
    func updateProfile() {
        print("Enter the following key to update the details accordingly")
        print("Enter 1 to change the Password")
        print("Enter 2 to change the Name")
        print("Enter 3 to change the Address")
        print("Enter 4 to change the Email")
        print("Enter 5 to change the Credit card info")
        print("Enter 6 to change the Shipping info")
        print("Enter 7 to go back")
        let option = Int(readLine()!)!
        
        switch option {
        case 1:
            print("Enter the new password")
            let pass = readLine()!
            logindatabase[currentUser] = pass
            print("Password updated")
            break
        case 2:
            print("Enter the new Name")
            let name = readLine()!
            let c = userDatabase[currentUser]
            c?.customerName = name
            print("Name updated")
            break
        case 3:
            print("Enter the new Address")
            let address = readLine()!
            let c = userDatabase[currentUser]
            c?.address = address
            print("Address updated")
            break
        case 4:
            print("Enter the new Email")
            let email = readLine()!
            let c = userDatabase[currentUser]
            c?.email = email
            print("Email updated")
            break
        case 5:
            print("Enter the new Credit Card info")
            let credit = readLine()!
            let c = userDatabase[currentUser]
            c?.creditCardInfo = credit
            print("Credit Card info updated")
            break
        case 6:
            print("Enter the new Shipping Info")
            let ship = readLine()!
            let c = userDatabase[currentUser]
            c?.shippingInfo = ship
            print("Shipping Info updated")
            break
        case 7:
            screenToDisplayAfterLogin(admin: false)
            break
        default:
            print("Invalid input")
            updateProfile()
            break
        }
    }
    
    override func displayData() -> String {
        let a = "Name: \(customerName), Address: \(address), Email: \(email), CreditCardInfo: \(creditCardInfo), ShippingInfo: \(shippingInfo)"
        return a
    }
    
}

