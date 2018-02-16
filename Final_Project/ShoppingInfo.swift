//
//  ShoppingInfo.swift
//  Final_Project
//
//  Created by Anna Nekha Shabu on 2018-02-12.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//


import Foundation

class ShippingInfo: IDisplay, ShippingInfoProtocol {
    var shippingId: Int
    var shippingType: String
    var shippingCost: Int
    var shippingRegionId: Int
    
    init(){
        self.shippingId = 0
        self.shippingType = ""
        self.shippingCost = 0
        self.shippingRegionId = 0
    }
    
    init(shippingId: Int, shippingType: String, shippingCost: Int, shippingRegionId: Int) {
        self.shippingId = shippingId
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionId = shippingRegionId
    }
    
    func updateShippingInfo(){
        print("Enter 1 to change the shipping type")
        print("Enter 2 to change the shipping region id")
        let shippingOption = Int(readLine()!)!
        
        switch shippingOption {
        case 1:
            print("The available shipping type is: ")
            shippingTypeArray.forEach{
                print("\($0)")
            }
            print("Enter new shipping type")
            let shippingTypeData = readLine()!
            
            if shippingTypeArray.contains(shippingTypeData){
                self.shippingType = shippingTypeData
                print("Updated")
            } else {
                print("Invalid input")
            }
            break
        case 2:
            print("The available Shipping Region ID's are as follows with there cost")
            print("Region ID: Cost")
            regionIdCost.forEach{
                print("\($0): \($1)")
            }
            print("Enter new shipping Region Id")
            let shippingRegionID = Int(readLine()!)!
            
            if let isAvailableRegionIDValue = regionIdCost[shippingRegionID]
            {
                self.shippingRegionId = shippingRegionID
                self.shippingCost = isAvailableRegionIDValue //The cost to ship at that shipping region
            } else {
                print("Enter the valid shipping region id from the list above")
            }
            
            print("Shipping ID updated")
            break
        default:
            print("Enter valid input 1 or 2")
            break
        }
        
    }
    
    func displayData() -> String {
        let a = "shipping id : \(shippingId), shipping type: \(shippingType), shipping cost: \(shippingCost), region id: \(shippingRegionId)"
        return a
    }
}

