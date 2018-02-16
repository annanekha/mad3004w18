//
//  main.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//
import Foundation

//Dictonary to store username and password for customers
var logindatabase = [String: String]()

//Dictonary to store username and password for admin
var logindatabaseadmin = [String: String]()

//Dictonary to store username and customers object containing the details of customers
var userDatabase = [String: Customers]()

//Dictonary to store username and customers object containing the details of admin
var userDatabaseAdmin = [String: Administrator]()

//This just keeps the username of the user here to be used in this file
var currentUser = ""

//Dictonary to save products details
//Now the key is productID and the value is array of 2 values with 1st product name and 2nd quantity
var productDetails = [Int:[Any]]()

//Dictonary to save shopping cart items where the key is the product id and the value has 2 values 1st quantity and 2nd is date added
var shoppingCartItems = [Int:[Any]]()

//Dictonary for shipping region id and there related cost
//The key is regionID and the value is the cost of that region
var regionIdCost: [Int: Int] = [1: 20, 2: 40, 3: 15, 4: 60]

//Array containing the shippingType
var shippingTypeArray: [String] = ["COD","Debit","Credit"]


//---------------------Default Customers details start ---------------------------------

//Default customer username and password and other details
let defaultCust1 = Customers(Name: "Jon Doy", addr: "Toronto", e_ID: "john.doe@gmail.com", creditInfo: "4162152456751245", shipInfo: "34 Bathrust St, Toronto", u_Id: "john", pswd: "password", loginInfo: "Logout")

logindatabase["john"] = "password"
userDatabase["john"] = defaultCust1

//---------------------Default Customers details ends ---------------------------------

//---------------------Default Admin details start ---------------------------------

//Default admin username and password and other details
let defaultAdmin1 = Administrator(admin_name: "jane", email_id: "jane@gmail.com", u_Id: "jane", pswd: "password", loginInfo: "Logout")

logindatabaseadmin["jane"] = "password"
userDatabaseAdmin["jane"] = defaultAdmin1

//---------------------Default Admin details ends ---------------------------------


//---------------------logout start ---------------------------------
func logout() {
    //Logout here!!
    //This gives out the c
    let c = userDatabase[currentUser]
    c?.loginStatus = "Logout"
    //Making the currentUser empty
    currentUser = ""
    print("Logout successfull \n")
    mainFunction()
}
//---------------------logout ends ---------------------------------


//This function is used to display data after user has logined
//It has parameter admin, which if true then admin block will work or else customer block will work
//---------------------screenToDisplayAfterLogin start ---------------------------------
func screenToDisplayAfterLogin(admin: Bool){
    print("\n")
    print("Welcome \(currentUser)")
    //Check if the user is admin or not
    if admin {
        //I am admin and give me functions of admin only
        print("Enter 1 to add catalog")
        print("Enter 2 to update catalog")
        print("Enter 3 to view catalog")
        print("Enter 4 to logout")
        let readAdminInput = readLine()
        
        if let readAdminInputNotNull = Int(readAdminInput!) {
            switch readAdminInputNotNull {
            case 1:
                //Add catologe function should be called here
                let adminObj = Administrator()
                adminObj.addCatalog()
                print("PRODUCT ADDED \n")
                screenToDisplayAfterLogin(admin: true)
                break
            case 2 :
                //Update Catologe function should be called here
                let adminObj = Administrator()
                adminObj.updateCatalog()
                screenToDisplayAfterLogin(admin: true)
                break
            case 3 :
                //View Catologe function should be called here
                let adminObj = Administrator()
                adminObj.viewCatalog()
                screenToDisplayAfterLogin(admin: true)
                break
            case 4 :
                //Logout function should be called here
                logout()
                break
            default:
                print("Enter 1, 2, 3 or 4")
                break
            }
        }
        
    } else {
        //I am a customer so give me functions of customers only
        print("Enter 1 to Update Profile")
        print("Enter 2 to Add items to Cart")
        print("Enter 3 to Update Quantity")
        print("Enter 4 to View Cart Details")
        print("Enter 5 to Checkout")
        print("Enter 6 to logout")
        let readCutomerInput = readLine()
        
        if let readCutomerInputNotNull = Int(readCutomerInput!) {
            switch readCutomerInputNotNull {
            case 1 :
                //Update Profile function should be called here
                let c = Customers()
                c.updateProfile()
                screenToDisplayAfterLogin(admin: false)
                break
            case 2 :
                //Add items to Cart function should be called here
                let s = ShoppingCart()
                s.addCardItem()
                screenToDisplayAfterLogin(admin: false)
                break
            case 3 :
                //Update Quantity function should be called here
                let s = ShoppingCart()
                s.updateQuantity()
                screenToDisplayAfterLogin(admin: false)
                break
            case 4 :
                //View Cart Details function should be called here
                let s = ShoppingCart()
                s.viewCartDetails()
                screenToDisplayAfterLogin(admin: false)
                break
            case 5 :
                //Checkout function should be called here
                if shoppingCartItems.isEmpty {
                    print("No item in cart to checkout. Add some item to checkout.")
                } else {
                    let s = ShoppingCart()
                    s.checkOut()
                }
                screenToDisplayAfterLogin(admin: false)
                break
            case 6:
                logout()
                break
            default:
                print("Enter input from 1 to 6")
                break
            }
        }
    }
}
//---------------------screenToDisplayAfterLogin ends ---------------------------------


//Customer Functions which handles everthing related to the customer
//---------------------Customer starts ---------------------------------
func Customer(){
    print("Enter 1 for Login and 2 for Registration")
    let lrRead = readLine()
    //checking if the line read is valid and converting it into integer along with tht
    if let lrReadNotNull = Int(lrRead!){
        switch lrReadNotNull {
        case 1:
            //This is the login case
            print("\nLOGIN SCREEN")
            
            print("Enter Username")
            let uname = readLine()
            print("Enter Password")
            let pswd = readLine()
            
            //Calling login func in Customer class
            let a = Customers.init()
            let loginSuccessOrNot = a.login(uname: uname!, pswd: pswd!)
            if loginSuccessOrNot {
                print("Login Successfull")
                currentUser = uname!
                
                screenToDisplayAfterLogin(admin: false)
            } else {
                print("Login Unsuccessfull")
            }
            break
        case 2:
            //This is the register case
            print("\nREGISTER SCREEN")
            
            print("Enter Username")
            let uname = readLine()
            print("Enter Password")
            let pswd = readLine()
            print("Enter Name")
            let name = readLine()
            print("Enter Address")
            let address = readLine()
            print("Enter Email")
            let email = readLine()
            print("Enter Credit Card Information")
            let ccardinfo = readLine()
            print("Enter Shipping Info")
            let shippingInfo = readLine()
            
            //Calling register function
            let a = Customers(Name: name!, addr: address!, e_ID: email!, creditInfo: ccardinfo!, shipInfo: shippingInfo!, u_Id: uname!, pswd: pswd!, loginInfo: "Login")
            a.register(uname: uname!, pswd: pswd!, customer: a)
            print("Registered Successfull")
            currentUser = uname!
            
            screenToDisplayAfterLogin(admin: false)
            
            //This is how to get data from database
            //print("Printing the database")
            //print(logindatabase)
            //
            //let c1: Customers = userDatabase[currentUser]!
            //print(c1.address)
            break
        default:
            print("Invalid input")
        }
    }
}
//---------------------Customer ends ---------------------------------


//Admin function which handles everything related to the admin
//---------------------Admin starts ---------------------------------
func Admin() {
    print("Enter 1 for Login and 2 for Registration")
    let lrRead = readLine()
    //checking if the line read is valid and converting it into integer along with tht
    if let lrReadNotNull = Int(lrRead!){
        switch lrReadNotNull {
        case 1:
            //This is the login case
            print("\nLOGIN SCREEN")
            
            print("Enter Username")
            let uname = readLine()
            print("Enter Password")
            let pswd = readLine()
            
            //Calling login func in Customer class
            let a = Administrator()
            let loginSuccessOrNot = a.login(uname: uname!, pswd: pswd!)
            if loginSuccessOrNot {
                print("Login Successfull")
                currentUser = uname!
                
                screenToDisplayAfterLogin(admin: true)
            } else {
                print("Login Unsuccessfull")
            }
            break
        case 2:
            //This is the register case
            print("\nREGISTER SCREEN")
            
            print("Enter Username")
            let uname = readLine()
            print("Enter Password")
            let pswd = readLine()
            print("Enter Name")
            let name = readLine()
            print("Enter Email")
            let email = readLine()
            
            //Calling register function
            let a = Administrator(admin_name: name!, email_id: email!, u_Id: uname!, pswd: pswd!, loginInfo: "Login")
            a.register(uname: uname!, pswd: pswd!, admin: a)
            print("Registered Successfull")
            currentUser = uname!
            
            screenToDisplayAfterLogin(admin: true)
            
            //This is how to get data from database
            //print("Printing the database")
            //print(logindatabase)
            //
            //let c1: Customers = userDatabase[currentUser]!
            //print(c1.address)
            break
        default:
            print("Invalid input")
        }
    }
}
//---------------------Admin Ends ---------------------------------

//Main program starts from here
func mainFunction() {
    print("Welcome to the shopping center \n")
    
    print("The default customer login details are: john:password")
    print("The default admin login details are: jane:password")
    print("\nEnter 1 if you are customer and 2 if you are Admin")
    let readAdminOrCustomer = readLine()
    if let readAdminOrCustomerNotNull = Int(readAdminOrCustomer!) {
        switch readAdminOrCustomerNotNull{
        case 1:
            //Customer block
            Customer()
            break
        case 2:
            //Admin block
            Admin()
            break
        default:
            print("Enter either 1 or 2")
            break
        }
    }
}

mainFunction()
