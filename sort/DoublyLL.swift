//
//  linkedlist.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//


class DoublyLLNode<T: Equatable> : Equatable {
  var next: DoublyLLNode?
  var previous: DoublyLLNode?
  var value: T

  init(value: T) {
    self.value = value
  }

  static func == (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
    return lhs.value == rhs.value
  }


}





//extension DoublyLLNode: Equatable {
//
////  static func < (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
////    return lhs.value < rhs.value
////  }
//
//  static func == (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
//    return lhs.value == rhs.value
//  }
//}

//
//class DoublyLinkedList<T> {
//  var head: DoublyLLNode<T>?
//  var tail: DoublyLLNode<T>?
//  
//  //addTo Head
//  func prepend(value: T) {
//    let newNode = DoublyLLNode(value: value)
//    
//    if let currentHead = head {
//      newNode.next = currentHead
//      currentHead.previous = newNode
//    } else {
//      tail = newNode
//    }
//    
//    head = newNode
//  }
//  
//  func append(value: T) {
//    let newNode = DoublyLLNode(value: value)
//    
//    if let currentTail = tail {
//      newNode.next = currentTail
//      currentTail.previous = newNode
//    } else {
//      head = newNode
//    }
//    
//    tail = newNode
//  }
//}
