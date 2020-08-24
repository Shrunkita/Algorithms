//
//  LinkedList.swift
//  Algorithms
//
//  Created by Shrunkita on 09/08/20.
//

import Foundation

public class Node{
    var value: String // declare node value property
    var next: Node? // declare next node pointer property
    weak var previous: Node? // Using for doubly linked list
    
    init(value: String) {
        self.value = value // initialize property
    }
}

public class LinkedList{
    var head: Node?
    var tail: Node?
    
    public var isEmpty: Bool{
        return head == nil
    }
    
    public var first: Node?{
        return head
    }
    
    public var last: Node?{
        return tail
    }
    
    public func appendNode(value: String){
        let newNode = Node(value: value)
        
        if let tailNode = tail{
            newNode.previous = tailNode // tailNode <- newNode
            tailNode.next = newNode // tailNode <- newNode
                                    //          ->
        }else{
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0{
            var node = head
            var i = index
            
            while node != nil {
                if i == 0
                {
                    return node
                }
                i -= 1
                print("i = \(i)")
                node = node!.next
                print("next node value \(node!.value)")
            }
        }
        return nil
    }
    
    public func removeNode(node:Node) -> String{
        let pre = node.previous
        let next = node.next
        
        if let pre = pre{
            pre.next = next
        }else{
            head = next
        }
        next?.previous = pre
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
}

extension LinkedList : CustomStringConvertible{ // This protocol expects you to implement a computed property with the name description, with the String type.
    public var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil{
                text += ", "
            }
        }
        return text + "]"
    }
}

//let dogBreeds = LinkedList()
//dogBreeds.appendNode(value: "Labrador")
//dogBreeds.appendNode(value: "Bulldog")
//dogBreeds.appendNode(value: "Beagle")
//dogBreeds.appendNode(value: "Husky")
//print(dogBreeds)
//let findNode = dogBreeds.nodeAt(index: 3)
//print(findNode!.value)
//let removeNode = dogBreeds.removeNode(node: findNode!)
//print(dogBreeds)



