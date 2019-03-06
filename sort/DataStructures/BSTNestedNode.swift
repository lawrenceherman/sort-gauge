//
//  BSTnestedNode.swift
//  sort
//
//  Created by Lawrence Herman on 3/2/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

class BSTRecursiveNestedNode {
  
  // Iterator Protocol
  // typealias Element = BSTNode, no need if have return type on next
  
  private var root: Node?
  
  private class Node: Comparable {
    var left: Node?
    var right: Node?
    var value: Int
    
    init(value: Int) {
      self.value = value
    }
    
    static func < (lhs: Node, rhs: Node) -> Bool {
      return lhs.value < rhs.value
    }
    
    static func == (lhs: Node, rhs: Node) -> Bool {
      return lhs.value == rhs.value
    }
  }
  
  func insert(value: Int) {
    let node = Node(value: value)
    
    if let current = root {
      insert(root: current, node: node)
    } else {
      root = node
    }
  }
  
  private func insert(root: Node, node: Node) {
    if node.value <= root.value {
      if let left = root.left {
        insert(root: left, node: node)
      } else {
        root.left = node
      }
    } else {
      if let right = root.right {
        insert(root: right, node: node)
      } else {
        root.right = node
      }
    }
  }
}






//search. contains or return/delete

//traverse
// in-order
// pre-order
// post-order

// delete node

