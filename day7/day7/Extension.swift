//
//  Extension.swift
//  day7
//
//  Created by Anna Nekha Shabu on 2018-02-06.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

//============ STRING EXTENSION =============

extension String{
    var length: Int{
        get {
            return self.count
        }
    }

    func contains(s: String) -> Bool{
        return true
    }
    
    var vowels: [String]
    {
        get {
            return ["a","e","i","o","u"]
        }
    }
    
    var consonants: [String]{
        get {
            return ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z",]
        }
    }
}

extension Int {
     var isPrime: Bool {
        //print(self)

        if self < 1
        {
          return false
        }
        else
        {
        
        for i in 2..<self {
            if self % i == 0 {
               
                return false
            }
        }
        }
        return true
    }
    
}


