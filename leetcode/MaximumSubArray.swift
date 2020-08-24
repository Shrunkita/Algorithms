//
//  MaximumSubArray.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

class MaximumSubArray{
    func maxSubArray(_ nums: [Int]) -> Int {
           if nums.count == 1{
               return nums[0]
           }
           var maxSum = nums[0]
           var sum = nums[0]
           for no in 1...nums.count-1{
               if sum + nums[no] < nums[no]{
                   sum = nums[no]
               }else{
                   sum += nums[no]
               }
               maxSum = max(maxSum,sum)
               print(maxSum)
           }
           return maxSum
       }
 }

//let nums = [-2,1,-3,4,-1,2,1,-5,4]
//maxSubArray(nums)
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.
