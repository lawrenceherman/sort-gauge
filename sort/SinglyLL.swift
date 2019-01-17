//
//  SinglyLL.swift
//  sort
//
//  Created by Lawrence Herman on 11/14/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation


class SinglyLLNode {
  
  var value: Int?
  var next: SinglyLLNode?
  
  init(value: Int) {
    self.value = value
    print("init \(value)")
    
  }
  
  deinit {
    print("deinit \(String(describing: value))")
  }
}


class SinglyLL {
  
  // first
  var head: SinglyLLNode?

  // this variable if not necessary if only want to use LL as a stack.  If want to use
  // as a queue or if there is need to iterate over list from tail to head we need.
  // last
  var tail: SinglyLLNode?
  
  // Could use either prepend/removeFromHead or append/removeFromTail as stack push/pop
  // LIFO.  As long as use same side
  
  //peekhead, peektail?
  
  deinit {
    print("singlyLL deinit")
  }
  

  //addToHead, addFirst, this is a push for utilizing removeHead/pop
  func prepend(value: Int) {
    let newNode = SinglyLLNode(value: value)
    
    if let currentHead = head {
      newNode.next = currentHead
    } else {
      tail = newNode
    }
    
    head = newNode
  }
  
  
  //addToTail, addLast, this is a push for utilizing removeTail/pop
  func append(value: Int) {
    
    let newNode = SinglyLLNode(value: value)
    
    if let currentTail = tail {
      currentTail.next = newNode
    } else {
      head = newNode
    }
    
    tail = newNode
  }
  
  
  // returnFirst, returnHead
//  func popHead() -> SinglyLLNode? {
//
//    if let headNode = head {
//
//      head = headNode.next
//
//      // check for memory leak
//      return headNode
//
//    } else {
//      return nil
//    }
//
//  }
  

  
  //  func nodeAt(index: Int) -> Node? {
  //
  //
  //
  //
  //  }
  
  //  public var first: Node? {
  //    return head
  //  }
  
  
  
  
  
  
  
  // addToTail, addLast, push
  // Would not have this func if SinglyLL did not have the last property.  Having
  //  // to cycle over LL without it would cause O(n).
  //  func append(value: Int) {
  //    let newNode = SinglyLLNode(value: value)
  //  }
  
  
  
  func printHeadToTail() {
    
    if var headNode = head {
      
      // fix. has to be a way not to dupe print here
      print(headNode.value!)
      while headNode.next != nil {
        headNode = headNode.next!
        print(headNode.value!)
      }
    }
  }
  //
  //  func clearLL() {
  //
  //    if head != nil {
  //
  //
  //
  //      while head?.next != nil {
  //
  //
  //      }
  //
  //
  //
  //
  //    }
  //
  
  //  }
  
  //Stack protocol oriented approach
  
  //  protocol Stackable {
  //    associatedtype Element
  //    mutating func push(_ element: Element)
  //    func peek() -> Element?
  //    mutating func pop() -> Element?
  //    mutating func removeAll()
  //  }
  
  // Linked list protocol implementation
  
  //  protocol Linkable {
  //    associatedtype D
  //    var value: D { get }
  //    var next: Self? { get set }
  //    var previous: Self? { get set }
  //
  //    init(value: D)
  //  }
  //
  
  
  
  
  
  
}





