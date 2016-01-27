//
//  main.swift
//  Lear01
//
//  Created by Jiaheng on 16/1/27.
//  Copyright © 2016年 Jiaheng. All rights reserved.
//

import Foundation

print("Hello, World!")


func anyCommonElements <T: SequenceType, U: SequenceType where T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, _ rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
//print(anyCommonElements(["asd", 2, 3], [4,1,"2"]))

func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues( &someInt, b: &anotherInt)

print(someInt,"and", anotherInt)