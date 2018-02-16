//
//  OrderDetails.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-12.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

class OrderDetails: IDisplay, OrderDetailsProtocol {
    var orderId: Int
    var productId: Int
    var productName: String
    var quantity: Int
    var unitCost: Float
    var subTotal: Float{
        return Float(quantity) * unitCost
    }
    
    init(){
        self.orderId = 0
        self.productId = 0
        self.productName = ""
        self.quantity = 0
        self.unitCost = 0.0
    }
    
    init(orderId: Int, productId: Int, productName: String, quantity: Int, unitCost: Float) {
        self.orderId = orderId
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
    }
    
    func displayData() -> String {
        let a = "orderID: " + String(self.orderId) + " ,productID: " + String(self.productId) + " ,productName: " + self.productName + " ,quantity: " + String(self.quantity) + " ,unitCost: " + String(self.unitCost) + " ,subTotal: " + String(self.subTotal)
        return a
    }
    
}
