//
//  linkedlist.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

// class DoublyLLNode<T> where T: Equatable {
class DoublyLLNode<T: Comparable> {
  var next: DoublyLLNode?
  var previous: DoublyLLNode?
  var value: T

  init(value: T) {
    self.value = value
  }
}

extension DoublyLLNode: Comparable {
  static func == (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
    return lhs.value == rhs.value
  }
  static func < (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
    return lhs.value < rhs.value
  }
}

// struct vs class for iterator
class DoublyLLIterator<T: Comparable> : IteratorProtocol {

  typealias Element = DoublyLLNode<T>
  var currentNode: Element?
  
  init(startNode: Element?) {
    print("DoubleLLIterator init" )
    currentNode = startNode
  }
  
  func next() -> DoublyLLIterator.Element? {
    print("DoublyLLNext")
    let node = currentNode
    currentNode = currentNode?.next
    return node
  }
}

extension DoublyLL : Sequence {
  typealias Iterator = DoublyLLIterator<T>
  
  func makeIterator() -> DoublyLLIterator<T> {
    return DoublyLLIterator(startNode: head)
  }
}


class DoublyLL<T: Comparable> {
 
  //see of typealias works better
  var head: DoublyLLNode<T>?
  var tail: DoublyLLNode<T>?
  
  
  //addTo Head
  func prepend(value: T) {
    let newNode = DoublyLLNode(value: value)
    
    if let currentHead = head {
      newNode.next = currentHead
      currentHead.previous = newNode
    } else {
      tail = newNode
    }
    
    head = newNode
  }
  
  //addTo Tail
  func append(value: T) {
    let newNode = DoublyLLNode(value: value)
    
    if let currentTail = tail {
      newNode.previous = currentTail
      currentTail.next = newNode
    } else {
      head = newNode
    }
    
    tail = newNode
  }

  var count: Int {
    guard var currentHead = head else { return 0 }
    
    var count = 1
    while let next = currentHead.next {
      count += 1
      currentHead = next
    }
    
    return count
  }
}



extension DoublyLL : Collection {
  
  subscript(position: Int) -> DoublyLLNode<T> {
    if position == 0 {
      
    
    
    }
    
    
  
  
  }
  
  func index(after i: Int) -> Int {
    
  
  
  
  }
  
  public typealias Index = Int
  
  var startIndex: Int {
    return 0
  }
  
  //split out count property/  count is O(n)
  var endIndex: Int {
    guard count >= 1 else { return 0 }
    return count - 1
  }

}


