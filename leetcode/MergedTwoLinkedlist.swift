//
//  MergedTwoLinkedlist.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//  Copyright © 2020 Shrunkita. All rights reserved.
//

import Foundation

class MergedTwoLinkedlist{
     func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            if l1 == nil{return l2}
            if l2 == nil{return l1}
            var result : ListNode? = nil
            if (l1!.val <= l2!.val){
                result = l1
                result!.next = mergeTwoLists(l1!.next,l2)
            }else{
                result = l2
                result!.next = mergeTwoLists(l1,l2!.next)
            }
            return result
        }

        public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init() { self.val = 0; self.next = nil; }
        public init(_ val: Int) { self.val = val; self.next = nil; }
        public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;}
    }
}
