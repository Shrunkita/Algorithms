//
//  SearchInsertPosition.swift
//  Algorithms
//

import Foundation

class SearchInsertPosition{

    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
         var left = 0
         var right = nums.count-1
         if nums.contains(target){
             while left < right{
                let middle = Int((left + right) / 2)
                 if nums[middle] == target{
                     return middle
                 }
                 if nums[middle] < target{
                     left = middle + 1
                 }else if nums[middle] > target{
                     right = middle - 1
                 }
             }
           return left
         }else{
             for (index, num) in nums.enumerated(){
                 if num > target{
                     return index
                 }
             }
              return nums.count
         }
     }
}

//Example 1:
//Input: [1,3,5,6], 5
//Output: 2
//
//Example 2:
//Input: [1,3,5,6], 2
//Output: 1
