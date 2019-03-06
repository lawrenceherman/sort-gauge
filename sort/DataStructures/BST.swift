//
//  Tree.swift
//  sort
//
//  Created by Lawrence Herman on 2/8/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

// check data / aspects of self containing tree.  No node class
// vs separate node / tree classes / nested


class BSTNode: Comparable {
  var left: BSTNode?
  var right: BSTNode?
  var value: Int

  init(value: Int) {
    self.value = value
  }

  static func < (lhs: BSTNode, rhs: BSTNode) -> Bool {
    return lhs.value < rhs.value
  }

  static func == (lhs: BSTNode, rhs: BSTNode) -> Bool {
    return lhs.value == rhs.value
  }
}

//
//struct SinglyLLIterator<T: Comparable>: IteratorProtocol {
//  //  typealias Element = SinglyLLNode<T>
//
//  var currentNode: Element?
//
//  init(startNode: Element?) {
//    print("iterator protocol init")
//    currentNode = startNode
//  }
//
//  mutating func next() -> SinglyLLNode<T>? {
//    print("next")
//    let node = currentNode
//    currentNode = currentNode?.next
//    return node
//  }
//}
//
//
//// check memory for Struc SinglyLL
//extension SinglyLL: Sequence {
//  typealias Iterator = SinglyLLIterator<T>
//
//  func makeIterator() -> SinglyLLIterator<T> {
//    print("make iterator")
//    return SinglyLLIterator(startNode: head)
//  }
//}


struct BSTIterator: IteratorProtocol {

  var current: BSTNode?
  
  init(startNode: BSTNode?) {
    current = startNode
  }
  
  mutating func next() -> BSTNode? {
    let node = current
    current = node?.left
    return node
  
  }
  
  
}
extension BSTRecursive: Sequence {
  
  func makeIterator() -> BSTIterator {
    return BSTIterator(startNode: root)
  }
  
}



class BSTRecursive {

  // Iterator Protocol
// typealias Element = BSTNode, no need if have return type on next

  fileprivate var root: BSTNode?

  func insert(value: Int) {
    let node = BSTNode(value: value)

    if let current = root {
      insert(root: current, node: node)
    } else {
      root = node
    }
  }

  private func insert(root: BSTNode, node: BSTNode) {
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




class BSTIterative {
  fileprivate var root: BSTNode?

  func insert(value: Int) {
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
  }
}





//insert keeping append for now for testing
//search. contains or return/delete

//traverse
// in-order
// pre-order
// post-order

// delete node
