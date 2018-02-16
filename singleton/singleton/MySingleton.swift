//
//  MySingleton.swift
//  singleton
//
//  Created by Anna Nekha Shabu on 2018-02-16.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

// Singleton design pattern

import Foundation

class MySingleton{
    private static var instant = MySingleton()
    
    private init(){}
    static func getInstant() -> MySingleton{
        if instant != nil {
            return instant
        }
        else{
            instant = MySingleton()
            return instant
        }
    }
    
    func getMyName() -> String{
        return "Anna"
    }
}
