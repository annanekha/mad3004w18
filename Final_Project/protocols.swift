//
//  protocols.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-13.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

protocol AdministratorProtocol
{
    var adminName: String {get set}
    var email: String {get set}
}

protocol CustomersProtocol {
    var customerName: String {get set}
    var address: String {get set}
    var email: String {get set}
    var creditCardInfo: String {get set}
    var shippingInfo: String {get set}
}

protocol OrdersProtocol {
    var orderId: Int {get set}
    var dateCreated: String {get set}
    var dateShipped: String {get set}
    var customerName: String {get set}
    var customerId: String {get set}
    var status: String {get set}
    var shippingId: String {get set}
}

protocol ShoppingCartProtocol {
    var cartId: Int {get set}
    var productId: Int {get set}
    var quantity: Int {get set}
    var dateAdded: Int {get set}
}

protocol UserProtocol {
    var userId: String {get set}
    var password: String {get set}
    var loginStatus: String {get set}
}

protocol ShippingInfoProtocol {
    var shippingId: Int {get set}
    var shippingType: String {get set}
    var shippingCost: Int {get set}
    var shippingRegionId: Int {get set}
}

protocol OrderDetailsProtocol {
    var orderId: Int {get set}
    var productId: Int {get set}
    var productName: String {get set}
    var quantity: Int {get set}
    var unitCost: Float {get set}
}

