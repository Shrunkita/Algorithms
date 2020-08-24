//
//  InOrderTreeTraversal.swift
//  
//
//  Created by Shrunkita on 23/08/20.
//

import Foundation

func inorderTraversal(_ root: TreeNode?) -> [Int] {
       var result = [Int]()
       inorderTree(root,&result)
       return result
   }
   
   func inorderTree(_ root: TreeNode? , _ result: inout [Int]){
       guard let root = root else {return}
       inorderTree(root.left,&result)
       result.append(root.val)
       inorderTree(root.right,&result)
   }
