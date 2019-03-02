//
//  Tree.swift
//  sort
//
//  Created by Lawrence Herman on 2/8/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

// check data / aspects of self containing tree.  No node class
// vs separate node / tree classes / nested


class BSTNode {
  
  var left: BSTNode?
  var right: BSTNode?
  var value: Int
  
  init(value: Int) {
    self.value = value
  }
}



class BST {
 var root: BSTNode?

  //search. contains or return/delete
  
  //traverse
  // in-order
  // pre-order
  // post-order
  
  // delete node
  
  
  //insert keeping append for now for testing
  func append(value: Int) {
    let node = BSTNode(value: value)
    
    if var current = root {
      // try with while let
      while (current.left != nil && value <= current.value) || (current.right != nil && value > current.value) {
        
        if value <= current.value {
          current = current.left!
        } else if value > current.value {
          current = current.right!
        }
      }
      
      if value <= current.value {
        current.left = node
      } else {
        current.right = node
      }
    } else {
      root = node
    }
    
    //recursive insert
    
    
    
  }
}
