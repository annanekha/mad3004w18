//
//  main.swift
//  generics
//
//  Created by Anna Nekha Shabu on 2018-02-16.
//  Copyright © 2018 Anna Nekha Shabu. All rights reserved.
//

import Foundation

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    //func swapTwoValues(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var num1 = 3
var num2 = 107
print("num1 = \(num1) num2 = \(num2)")

swapTwoValues(&num1, &num2)
print("After swapping num1 = \(num1) num2 = \(num2)")

var str1 = "Hi"
var str2 = "Bye"
print("str1 = \(str1) str2 = \(str2)")
swapTwoValues(&str1, &str2)
print("After swapping str1 = \(str1) str2 = \(str2)")


//stack example using Generics
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("First")
stackOfStrings.push("Second")
stackOfStrings.push("Third")
stackOfStrings.push("Fourth")

print("Stack : \(stackOfStrings)")

let fromTheTop = stackOfStrings.pop()
print("Stack : \(stackOfStrings)")

extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

if let topItem = stackOfStrings.topItem {
    print("The top item on the stack is \(topItem).")
}

//type constraints
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    //func findIndex<T>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findIndex(of: "llama", in: strings) {
    print("The index of llama is \(foundIndex)")
}

if let doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25]){
    print("The index of 9.3 is \(doubleIndex)")
}

if let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"]){
    print("The index of Abdrea is \(stringIndex)")
}

//Associated types
protocol Container {
    //associatedtype Item: Equatable
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct StackContainer<Element>: Container {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}

//Extending an Existing Type to Specify an Associated Type
extension Array: Container {}


