//
//  Orders.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

class Orders: IDisplay, OrdersProtocol {
    var orderId: Int
    var dateCreated: String
    var dateShipped: String
    var customerName: String
    var customerId: String
    var status: String
    var shippingId: String
    
    init(){
        self.orderId = 0
        self.dateCreated = ""
        self.dateShipped = ""
        self.customerName = ""
        self.customerId = ""
        self.status = ""
        self.shippingId = ""
    }
    
    init(orderId: Int, dateCreated: String, dateShipped: String, customerName: String, customerId: String, status: String, shippingId: String) {
        self.orderId = orderId
        self.dateCreated = dateCreated
        self.dateShipped = dateShipped
        self.customerName = customerName
        self.customerId = customerId
        self.status = status
        self.shippingId = shippingId
    }
    
    func placeOrder(){
        print("Order generated!")
    }
    
    func displayData() -> String {
        let a = "OrderID: \(orderId), date created: \(dateCreated), date shipped: \(dateShipped), customer name: \(customerName), customer id: \(customerId), status: \(status), shipping id: \(shippingId)"
        return a
    }
}


