//: Playground - noun: a place where people can play

import UIKit



var optionalName: String!
var greeting: String? = " Hello"

// if let 代码
if let name = optionalName, let greet = greeting {
    name + greet
}

// guard let 代码

func answer(){
    guard let name = optionalName, let greet = greeting  else {
        return
    }
    name + greet
}

answer()

protocol Container{
    var ItemType:Int!{
        get
    }
    var count:Int!{
        get
    }
}

protocol Equatable{
    
}

func allItemsMatch<
    C1: Container, C2: Container
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    (someContainer: C1, anotherContainer: C2) -> Bool {
    
    // check that both containers contain the same number of items
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    // check each pair of items to see if they are equivalent
    for i in 0...someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    // all items match, so return true
    return true
    
}

// 输出 "All items match."
