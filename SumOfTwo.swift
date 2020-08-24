//
//  SumOfTwo.swift
//  Algorithms
//
//  Created by Riken Shah on 09/08/20.
//  Copyright © 2020 Riken Shah. All rights reserved.
//

import Foundation


class SumOfTwo {
    // Find sum of two if array is sorted
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        // Solution 1 -> Brute Force method - Complexity n*2
//        for i in 0...nums.count-1{
//            for j in 0...nums.count-1 where j != i{
//                print("i = \(nums[i]) , j = \(nums[j])")
//                if nums[i] + nums[j] == target{
//                    result.append(i)
//                    result.append(j)
//                    return result
//                }
//            }
//        }
   
    // Solution 2 -> Two pointer method - complexity O(n) - get index of two element
        let numberArr = nums.sorted()
        print(numberArr)
        
             
             var left = 0
             var right = numberArr.count - 1
             
             while left < right{
                let sum = numberArr[left] + numberArr[right]
                 
                 if sum < target{
                     left = left + 1
                 }else if sum > target{
                     right = right - 1
                 }else{
                     return [left+1, right+1] // get index
                 }
                 
             }
             
              return []
        
        
        // Solution 3 -> binary search method - complexity nlogn
//             for item in 0...numberArr.count-1{
//             let complement = target - numberArr[item]
//             var left = 0
//             var right = numberArr.count - 1
//                    while left <= right {
//                        let middle = (left + right) / 2
//                        if numberArr[middle] == complement{
//                            return result
//                        }else if numberArr[middle] < complement{
//                            left = middle + 1
//                            print(left)
//                        }else if numberArr[middle] > complement{
//                            print(right)
//                            right = middle - 1
//                        }
//                    }
//            result.append(left)
//            result.append(right)
//        }
//
//        return result
     }
    
}
