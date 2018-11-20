//
//  SinglyLL.swift
//  sort
//
//  Created by Lawrence Herman on 11/14/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation

class SinglyLL {

  // first
  var head: SinglyLLNode?
  // last
  // this variable if not necessary if only want to use LL as a stack.  If want to use
  // as a queue or if there is need to iterate over list from tail to head we need.
  var tail: SinglyLLNode?
 
  // Could use either prepend/removeFromHead or append/removeFromTail as stack push/pop
  // LIFO.  As long as use same side
  
  // addToHead, addFirst, push utilizing removeHead
  func prepend(value: Int) {
    let newNode = SinglyLLNode(value: value)
    
    //if head exists
    if let cursorHead = head {
      newNode.next = cursorHead
      head = newNode
    } else {
      // if no head node becomes head and tail
      head = newNode
      tail = newNode
    }
  }
  
  // addToTail, addLast, push if utilizing removeTail
  func append(value: Int) {
    let newNode = SinglyLLNode(value: value)
    
    if let cursorTail = tail {
      cursorTail.next = newNode
      tail = newNode
    } else {
      head = newNode
      tail = newNode
    }
  }
  
  // removeFirst, pop
  func removeHead() -> SinglyLLNode? {
    
    if let cursorHead = head {
      head = cursorHead.next
      // check for memory leak
      return cursorHead
      
    } else {
      return nil
    }
  }
  
//  public var first: Node? {
//    return head
//  }
  
  
  
  
  
  
  
  // addToTail, addLast, push
  // Would not have this func if SinglyLL did not have the last property.  Having
//  // to cycle over LL without it would cause O(n).
//  func append(value: Int) {
//    let newNode = SinglyLLNode(value: value)
//
//
//
//
//
//
//  }
  
  
  
  func printHeadToTail() {
    
    if var cursorHead = head {
      var i = 0
      print(String(i) + " " + cursorHead.value.debugDescription)
      
    
      while cursorHead.next != nil {
        cursorHead = cursorHead.next!
        i += 1
        print(String(i) + " " + cursorHead.value.debugDescription)
    
      }
    }
  }
  
  

//  func addLast(value: Int) {
//
//
//
//
//  }
 
  
  // pop on stack
//  func removeFirst() -> SinglyLLNode {
//
//
//
//
//
//
//
//  }
//
//  func removeLast() -> SinglyLLNode {
//    
//    
//    
//    
//  }




}


class SinglyLLNode {
  
  var value: Int?
  var next: SinglyLLNode?
  
  init(value: Int) {
    self.value = value
  }
}


  


