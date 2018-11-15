//
//  linkedlist.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation

class DoublyLL {
  
  // swift array is first last
  
  var head: DoublyLLNode?
  var tail: DoublyLLNode?
  

  //swift term
  func append(value :Int) {
    let newNode = DoublyLLNode(value: value)
    
    if let head = head {
      var currentNode = head
      while currentNode.next != nil {
        
        
      }
      
      
      
    } else {
      
       head = newNode
      
      
    }
    
    

  
  
  
  
  
  }
  
  
  // addFirst, addHead
  func prepend(value: Int) {
    
    
    
    
    
  }
  
  // remove(at: Int) -> Array<Element>.Element
  // removeFirst() -> Element
  // removeLast() -> Element
  
//  func removeAll(where: (Element) -> Bool)
//  Removes all the elements that satisfy the given predicate.
  
  //swift term - isEmpty
  
  //swift term
//  func insert(value: Int, at index: Int) {
//
//
//
//
//  }
//
//
//  func count() -> Int {
//
//
//
//
//
//  }





}

class DoublyLLNode {
  
  var value: Int?
  var next: DoublyLLNode?
  var previous: DoublyLLNode?
  
  init(value: Int) {
    self.value = value
  }
  
  deinit {
    print("DoublyLLNode deinit")
  }
}



func createDoublyLLOfLength(length: Int) -> DoublyLL {
  
  
  
  
  
  
  


}
