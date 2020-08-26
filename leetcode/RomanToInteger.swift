//
//  RomanToInteger.swift
//  
//
//  Created by Riken Shah on 26/08/20.
//

import Foundation

class RomanToInteger {
     func romanSymbols(_ char: Character) -> Int {
        switch (char) {
            case "I":
                return 1
                break
            case "V":
                return 5
                break
            case "X":
                return 10
                break
            case "L":
                return 50
                break
            case "C":
                return 100
                break
            case "D":
                return 500
                break
            case "M":
                return 1000
                break
            default:
                return -1
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        let chars = Array(s)
        var result = 0
        
        for i in 0..<chars.count {
            if i < chars.count - 1 && romanSymbols(chars[i]) < romanSymbols(chars[i + 1]) {
                result -= romanSymbols(chars[i])
                continue
            }
            result += romanSymbols(chars[i])
        }
        
        return result
    }
}

//Input: "III"
//Output: 3
//Input: "IX"
//Output: 9
//Input: "LVIII"
//Output: 58
//Explanation: L = 50, V= 5, III = 3.


Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
