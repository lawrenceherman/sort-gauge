//
//  SinglyLL.swift
//  sort
//
//  Created by Lawrence Herman on 11/14/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation


class SinglyLL {

  var first: SinglyLLNode?
  var last: SinglyLLNode?
  
  // so if you don't keep reference to last you wouldnt want to addLast due to O(n)
  // basically a stack LIFO
  
  // with a last reference can also act like a queue. O(1)  FIFI

  
  // added and removed from same side = stack
  // added and remove from different side = queue
  class Test {
  
  }


  // push on stack
  func addFirst(value: Int) {
    
    // if tail is nill
    
    
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


  


