//
//  StackDataStructure.swift
//  
//
//  Created by Shrunkita on 25/08/20.
//

import Foundation

// Stack data structure without generics
class Node {
    var value : Int
    var next : Node?

    init(value:Int) {
        self.value = value
    }
}

class Stack{
    var top : Node?

    func push(newValue: Int){
        let oldTop = top
        top = Node(value: newValue)
        top?.next = oldTop
    }

    func pop() -> Int? {
        let currentTop = top
        top = currentTop?.next
        return currentTop?.value
    }

    func peek() -> Int? {
        return top?.value
    }
}

    let stack = Stack()
    stack.push(newValue: 2)
    stack.push(newValue: 5)
    stack.push(newValue: 12)
    stack.push(newValue: 23)
    stack.push(newValue: 11)

    stack.peek()
    stack.pop()
    stack.peek()



// Stack data structure using Generics
class NodeG<T> {
    var value : T
    var next : NodeG?
    
    init(value:T) {
        self.value = value
    }
}

class StackG<T>{
    var top : NodeG<T>?
    
    func push(newValue: T){
        let oldTop = top
        top = NodeG(value: newValue)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = currentTop?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
}


let stackG = StackG<Int>()
stackG.push(newValue: 2)
stackG.push(newValue: 5)
stackG.push(newValue: 12)
stackG.push(newValue: 23)
stackG.push(newValue: 11)

stackG.peek()
stackG.pop()
stackG.peek()


//let stackString = StackG<String>()
//stackString.push(newValue: "A")
//stackString.push(newValue: "B")
//stackString.push(newValue: "C")
//stackString.push(newValue: "D")
//stackString.push(newValue: "E")
//
//stackString.peek()
//stackString.pop()
//stackString.peek()
