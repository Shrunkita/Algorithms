//
//  SingleNumber.swift
//  
//
//  Created by Shrunkita on 26/08/20.
//

import Foundation

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var mapNumber = [Int:Int]()
        for i in nums{
            mapNumber[i] = (mapNumber[i] ?? 0) + 1
        }
        for item in nums{
            if mapNumber[item] == 1{
                return item
            }
        }
        return 0
    }
}


// Question
//Given a non-empty array of integers, every element appears twice except
//for one. Find that single one.
//
//Input: [2,2,1]
//Output: 1
//Input: [4,1,2,1,2]
//Output: 4
