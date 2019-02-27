//
//  Tree.swift
//  sort
//
//  Created by Lawrence Herman on 2/8/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

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
  
  func append(value: Int) {
    let node = BSTNode(value: value)
    
    if var currentRoot = root {
      
      while ((currentRoot.left != nil) && (value <= currentRoot.value)) || ((currentRoot.right != nil) && (value > currentRoot.value)) {
        
        if value <= currentRoot.value {
          currentRoot = currentRoot.left!
          break
        }
        
        if value > currentRoot.value {
          currentRoot = currentRoot.right!
          break
        }
      
      }
      
      //node.value?
      if value <= currentRoot.value {
        currentRoot.left = node
      } else {
        currentRoot.right = node
      }
    
      // determine lesser or greater than currrent value
      // if lesser and no node place node
      // if greater and no node place node
      
      // if lesser and there is a node move current to that node and loop
      // if greater and there is a node move current to that node and loop
    } else {
      
      
      root = node


    }
  }
}
