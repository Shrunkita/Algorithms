//
//  ExcelSheetColumnNo.swift
//  
//
//  Created by Shrunkita on 26/08/20.
//

import Foundation

class ExcelSheetColumnNo {
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        for char in s{
            let num = Int(char.unicodeScalars.first!.value - 64)
            result = result * 26 + num
      }
        return result
    }
}

//Input: "A"
//Output: 1
//Input: "AB"
//Output: 28
