//
//  SumOfTwoNumberIndex.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

class SumOfTwoNumberIndex {

    // find sum of two index using unsorted array
    func twoSumIndex(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hash: [Int : Int] = [:]
        var response : [Int] = [];
        
        for (i, n) in nums.enumerated() {
            if let index = hash[target - n]{
                response.append(index)
                response.append(i)
            }
            hash[n] = i
        }
        return response;
    }
}
