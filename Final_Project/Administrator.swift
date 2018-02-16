//
//  Administrator.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class Administrator: User, AdministratorProtocol
{
    var adminName: String
    var email: String
    
    override init(){
        self.adminName = ""
        self.email = ""
        super.init()
    }
    
    init(admin_name: String, email_id: String, u_Id: String, pswd: String, loginInfo: String){
        self.adminName = admin_name
        self.email = email_id
        super.init(u_Id: u_Id, pswd: pswd, loginInfo: loginInfo)
    }
    
    //Function to register an admin
    func register(uname: String, pswd: String, admin: Administrator){
        logindatabaseadmin[uname] = pswd
        currentUser = uname
        userDatabaseAdmin[uname] = admin
    }
    
    //Function to login an admin
    func login (uname: String, pswd: String) -> Bool
    {
        let a = User()
        let loginSuccessOrNot: Bool = a.verifyLoginAdmin(inputUserId: uname, inputPassword: pswd)
        return loginSuccessOrNot
    }
    
    func addCatalog() {
        print("Enter the product ID")
        let id = Int(readLine()!)
        print("Enter the product Name")
        let name = readLine()!
        print("Enter the quantity")
        let quantity = readLine()!
        
        productDetails[id!] = [name, quantity]
    }
    
    func updateCatalog() {
        if productDetails.isEmpty {
            print("Sorry there is no item in catalog to update")
        } else {
            print("\nList of items in the Catalog are: ")
            print("ProductID: Name, Quantity")
            productDetails.forEach{
                print("\($0): \($1[0]), \($1[1])")
            }
            
            print("\nEnter the productID for which you want to update")
            let id = Int(readLine()!)!
            if let _ = productDetails[id] {
                print("Enter 1 to update the product name and enter 2 to update the product quantity")
                let option = Int(readLine()!)!
                
                switch option {
                case 1:
                    //Update product name
                    let oldName = productDetails[id]![0]
                    let oldquantity = productDetails[id]![1]
                    print("The old product name was \(oldName)")
                    print("Enter the new product name")
                    let newname = readLine()!
                    print("The new product name is \(newname)")
                    productDetails[id] = [newname, oldquantity]
                    print("PRODUCT UPDATED \n")
                    break
                case 2:
                    //Update product quantity
                    let oldName = productDetails[id]![0]
                    let oldquantity = productDetails[id]![1]
                    print("The product name is \(oldName) and old quantity is \(oldquantity)")
                    print("Enter the new product quantity")
                    let newquantity = readLine()!
                    print("The new product quantity is \(newquantity)")
                    productDetails[id] = [oldName, newquantity]
                    print("PRODUCT UPDATED \n")
                    break
                default:
                    print("Invalid input enter 1 or 2")
                }
            } else {
                print("Sorry the productID you entered is not available")
            }
            
        }
    }
    
    func viewCatalog() {
        if productDetails.isEmpty {
            print("Sorry there is no item in here")
        } else {
            print("Printing all the catalog details")
            print("ProductID: Name, Quantity")
            productDetails.forEach{
                print("\($0): \($1[0]), \($1[1])")
            }
        }
        
    }
    
    override func displayData() -> String {
        let a = "Admin Name: " + adminName + " Admin Email: " + email
        return a
    }
}
