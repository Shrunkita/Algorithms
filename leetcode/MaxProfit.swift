//
//  MaxProfit.swift
//  
//
//  Created by Shrunkita on 26/08/20.
//

import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var i = 1
        var minPrice = prices[0]
        var profit = 0
        while i < prices.count {
            if prices[i] - minPrice > profit {
                profit = prices[i] - minPrice
            }
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
            i += 1
        }
        return profit
    }
}


//Input: [7,1,5,3,6,4]
//Output: 5
//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//Not 7-1 = 6, as selling price needs to be larger than buying price.
