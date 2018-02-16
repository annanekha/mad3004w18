//
//  ShoppingCart.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class ShoppingCart: IDisplay, ShoppingCartProtocol {
    var cartId: Int
    var productId: Int
    var quantity: Int
    var dateAdded: Int
    
    init() {
        self.cartId = 0
        self.productId = 0
        self.quantity = 0
        self.dateAdded = 0
    }
    
    init(cartId: Int, productId: Int, quantity: Int, dateAdded: Int) {
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
    }
    
    func addCardItem() {
        if productDetails.isEmpty {
            print("Please enter some product in product catalog in admin section to view some products")
        } else {
            print("These are items and there name and quantity available right now is store: ")
            productDetails.forEach{
                print("\($0): \($1[0]), \($1[1])")
            }
            print("\nEnter the productId which you want to add in the cart\n")
            let id = Int(readLine()!)!
            if let _ = productDetails[id]{
                print("Enter the quantity of the above product you want")
                let quantity = Int(readLine()!)!
                let date = currentDate()
                shoppingCartItems[id] = [quantity, date]
                print("Successfully added the product to shopping cart")
            } else {
                print("The product you selected is not available in store right now")
            }
        }
    }
    
    func updateQuantity() {
        //Update quantity
        if(shoppingCartItems.isEmpty){
            print("Sorry can't update quantity as the shopping cart is empty")
        } else {
            print("These are the items in your cart right now")
            print("ProductID: Quantity, Date Added")
            shoppingCartItems.forEach{
                print("\($0): \($1[0]), \($1[1])")
            }
            print("Enter the product ID whose quantity you want to update")
            let id = Int(readLine()!)!
            if let arrayOfData = shoppingCartItems[id]{
                let oldQuantity = arrayOfData[0]
                let oldDate = arrayOfData[1]
                print("The old quantity is \(oldQuantity)")
                print("Enter the new quantity")
                let newQuantity = Int(readLine()!)!
                shoppingCartItems[id] = [newQuantity, oldDate]
                print("Quantity updated!!")
            } else {
                print("Sorry the product id you entered is not inside your shopping cart.")
            }
        }
    }
    
    func viewCartDetails(){
        //I think only print out cart details
        if shoppingCartItems.isEmpty {
            print("Sorry the cart is empty")
        } else {
            print("These are the items in your cart right now")
            print("ProductID: Quantity, Date Added")
            shoppingCartItems.forEach{
                print("\($0): \($1[0]), \($1[1])")
            }
        }
    }
    
    func checkOut() {
        //print out the order details and shipping info
        print("Generating order details : ")
        print("Enter 1 to update shipping info")
        print("Enter 2 to place order")
        print("Enter 3 to go back")
        let option = Int(readLine()!)!
        switch option {
        case 1:
            let sh = ShippingInfo()
            sh.updateShippingInfo()
            checkOut()
            break
        case 2:
            let or = Orders()
            or.placeOrder()
            break
        case 3:
            break
        default:
            print("Enter a valid input")
        }
    }
    
    private func currentDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let result = formatter.string(from: date)
        return result
    }
    
    func displayData() -> String {
        let a = "cart id: \(cartId), product id: \(productId), quantity: \(quantity), date added: \(dateAdded)"
        return a
    }
}

