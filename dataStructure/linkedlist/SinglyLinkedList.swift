//
//  SinglyLinkedList.swift
//  
//
//  Created by Shrunkita on 24/08/20.
//

import Foundation

// Singly linkedList insertion,deletion

class Node{
    var value: Int
    var next : Node?
    init(value:Int, next:Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList{
    var head : Node?
    
    func insertNode(value:Int){
        if head == nil{
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = Node(value: value, next: nil)
    }
    
    // Inser Inorder value
    func inOrderValue(value:Int){
        if head == nil || head?.value ?? Int.min >= value{
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        
        var currentNode = head
        while currentNode?.next != nil || currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        
        currentNode?.next = Node(value: value, next: currentNode?.next)
    }
    
    func deletenode(value:Int){
        if head?.value == value{
            head = head?.next
        }
        
        var pre : Node?
        var current = head
        while current != nil && current?.value != value{
            pre = current
            current = current?.next
        }
        
        pre?.next = current?.next
    }
    
    func displayLinkedList(){
        var current = head
        
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
}

//let samplelist = LinkedList()
//samplelist.insertNode(value: 1)
//samplelist.insertNode(value: 2)
//samplelist.insertNode(value: 3)
//samplelist.displayLinkedList()
//samplelist.deletenode(value: 2)
//samplelist.inOrderValue(value: 2)
//samplelist.displayLinkedList()
