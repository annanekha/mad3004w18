//
//  main.swift
//  singleton
//
//  Created by Anna Nekha Shabu on 2018-02-16.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

//var s1 = MySingleton()

//var obj1 = MySingleton()
//MySingleton.instant.getMyName()

print(MySingleton.getInstant().getMyName())

var obj2 = MySingleton.getInstant()
print(obj2.getMyName())

var obj3 = MySingleton.getInstant()
print(obj3.getMyName())
