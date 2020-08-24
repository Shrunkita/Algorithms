//
//  PreOrderTreeTraversal.swift
//  
//
//  Created by Shrunkita on 23/08/20.
//

import Foundation

func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    preOrderTree(root,&result)
    return result
}

func preOrderTree(_ root: TreeNode?, _ result: inout [Int]){
    guard let root = root else{ return }
    result.append(root.val)
    preOrderTree(root.left,&result)
    preOrderTree(root.right,&result)
}

//Input: [1,null,2,3]
//   1
//    \
//     2
//    /
//   3
//
//Output: [1,2,3]
