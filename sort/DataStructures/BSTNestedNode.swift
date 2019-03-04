//
//  BSTnestedNode.swift
//  sort
//
//  Created by Lawrence Herman on 3/2/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

//
//class BSTNested {
//
//  private var root: Node?

//  func insert(value: Int) {
//    let node = Node(value: value)
//    if let root = self.root {
//      Node.insertRecursive(root: root, node: node)
//
//    } else {
//      self.root = node
//    }
//  }
  
  
//  private class Node {
//    var parent: Node?
//    var left: Node?
//    var right: Node?
//    var value: Int
//
//    init(value: Int) {
//      self.value = value
//    }
//

    
//    func insertRecursive(root: Node, node: Node) {
//
//      if value <= self.value {
//        if let current = left {
//          current.insertRecursive(root: current, node: node)
//        } else {
//          left = Node(value: value)
//          left?.parent = self
//        }
//      } else {
//        if let current = right {
//          current.insertRecursive(root: current)
//        } else {
//          right = Node(value: value)
//          right?.parent = self
//        }
//      }
//    }
    

    
//    insert keeping append for now for testing
//    func insertLooping(value: Int) {
//      let node = Node(value: value)
//
//      if var current = root {
//        // try with while let
//        while (current.left != nil && value <= current.value) || (current.right != nil && value > current.value) {
//
//          if value <= current.value {
//            current = current.left!
//          } else if value > current.value {
//            current = current.right!
//          }
//        }
//
//        if value <= current.value {
//          current.left = node
//        } else {
//          current.right = node
//        }
//      } else {
//        root = node
//      }
//
//    }
//}




//search. contains or return/delete

//traverse
// in-order
// pre-order
// post-order

// delete node

