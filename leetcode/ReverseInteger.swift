//
//  ReverseInteger.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

// Question
 
// Given a 32-bit signed integer, reverse digits of an integer.

class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        let mapInt = String(x).compactMap({$0})
        var right = mapInt.count-1
        var reverse = String()
        var isNegative = false
        for i in mapInt{
            if i == "-"{
                  isNegative = true
              }else{
                 reverse += String(mapInt[right])
                 right -= 1
             }
           if right < 0{
               break
           }
       }
        let numResult = Int(reverse)!
        if numResult > Int32.max{
            return 0
        }
        return isNegative ? Int("-\(reverse)")! : Int(reverse)!
       
    }
}

//Example 1:
//
//Input: 123
//Output: 321
//Example 2:
//
//Input: -123
//Output: -321
//Example 3:
//
//Input: 120
//Output: 21
