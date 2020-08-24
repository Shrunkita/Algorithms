//
//  longestCommonPrefix.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

class longestCommonPrefix{
     func longestCommonPrefix(_ strs: [String]) -> String {
            if strs.count == 0 {
                return ""
            }
           
            var minStr = (strs.min{$0.count < $1.count})!  // get min string in array
            
            for str in strs{
                while !str.hasPrefix(minStr){ // check string from starting
                     minStr.removeLast()
                }
    //            while !str.hasSuffix(minStr){ // check string from ending
    //                minStr.removeFirst()
    //            }
            }
            print(minStr)
            return minStr
        }
}


//let Input = ["flower","flow","flight"]
//longestCommonPrefix(Input)
