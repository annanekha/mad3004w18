
//  User.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class User: IDisplay, UserProtocol {
    var userId: String
    var password: String
    var loginStatus: String
    
    init(){
        self.userId = ""
        self.password = ""
        self.loginStatus = ""
    }
    
    init (u_Id: String, pswd: String, loginInfo: String){
        self.userId = u_Id
        self.password = pswd
        self.loginStatus = loginInfo
    }
    
    func verifyLogin(inputUserId: String, inputPassword: String) -> Bool
    {
        if let passwordInDatabase = logindatabase[inputUserId]{
            //Ok the username is in the database so we have to check the password is correct or not
            if inputPassword == passwordInDatabase {
                //Password matches
                return true
            } else {
                //password not matches
                return false
            }
        } else {
            //Username not found
            return false
        }
    }
    
    func verifyLoginAdmin(inputUserId: String, inputPassword: String) -> Bool
    {
        if let passwordInDatabase = logindatabaseadmin[inputUserId]{
            //Ok the username is in the database so we have to check the password is correct or not
            if inputPassword == passwordInDatabase {
                //Password matches
                return true
            } else {
                //password not matches
                return false
            }
        } else {
            //Username not found
            return false
        }
    }
    
    func displayData() -> String {
        let a = "userID: \(userId), password: \(password), login status: \(loginStatus)"
        return a
    }
}

