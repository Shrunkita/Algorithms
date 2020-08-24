//
//  HappyNumber.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

class HappyNumber{
    func isHappy(_ n: Int) -> Bool {
           var edit = n
           var count = 0
           var temp = 0
           if edit == 1{
               return true
           }
           while (edit != 0) {
               edit = edit / 10;
               count += 1
           }
            edit = n
           if count == 1{
               return false
           }
           print("Count = \(count)")
           while count != 0{
               let reminder = edit % 10
               print("reminder \(reminder)")
               temp += reminder * reminder
               let remaining = edit / 10
               edit = remaining
               count -= 1
               print("Edit \(edit)")
           }
           print(temp)
           let ishappy = isHappy(temp)
           return ishappy
       }
}

//let ishappy = isHappy(19)
//print(ishappy)
