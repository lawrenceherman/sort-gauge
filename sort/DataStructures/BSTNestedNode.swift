//
//  BSTnestedNode.swift
//  sort
//
//  Created by Lawrence Herman on 3/2/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//


class BSTNested {
  private var root: Node?
  
  private class Node {
    var parent: Node?
    var left: Node?
    var right: Node?
    var value: Int
    
    init(value: Int) {
      self.value = value
    }
    
    //    func insert(value: Int) {
    //      if value < self.value {
    //        if let current = left {
    //          current.insert(value: value)
    //        } else {
    //          left = Node(value: value)
    //          left?.parent = self
    //        }
    //      } else {
    //        if let current = right {
    //          current.insert(value: value)
    //        } else {
    //          right = Node(value: value)
    //          right?.parent = self
    //        }
    //      }
    
  }
  
  
  
  
  
  //search. contains or return/delete
  
  //traverse
  // in-order
  // pre-order
  // post-order
  
  // delete node
  
  
  //insert keeping append for now for testing
  func append(value: Int) {
    let node = Node(value: value)
    
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
