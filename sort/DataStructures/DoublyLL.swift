//
//  linkedlist.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

// class DoublyLLNode<T> where T: Equatable {
class DoublyLLNode<T: Comparable> {
  var next: DoublyLLNode?
  var previous: DoublyLLNode?
  var value: T
  
  init(value: T) {
    self.value = value
  }
}

extension DoublyLLNode: Comparable {
  static func == (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
    return lhs.value == rhs.value
  }
  static func < (lhs: DoublyLLNode<T>, rhs: DoublyLLNode<T>) -> Bool {
    return lhs.value < rhs.value
  }
}

//// struct vs class for iterator
//class DoublyLLIterator<T: Comparable> : IteratorProtocol {
//
//  typealias Element = DoublyLLNode<T>
//  var currentNode: Element?
//
//  init(startNode: Element?) {
//    print("DoubleLLIterator init" )
//    currentNode = startNode
//  }
//
//  func next() -> DoublyLLIterator.Element? {
//    print("DoublyLLNext")
//    let node = currentNode
//    currentNode = currentNode?.next
//    return node
//  }
//}

//extension DoublyLL : Sequence {
//  typealias Iterator = DoublyLLIterator<T>
//
//  func makeIterator() -> DoublyLLIterator<T> {
//    return DoublyLLIterator(startNode: head)
//  }
//}


class DoublyLL<T: Comparable> {
  
  
  typealias Node = DoublyLLNode<T>
  //see of typealias works better
  var head: Node?
  var tail: Node?
  
  
  //addTo Head
  func prepend(value: T) {
    let newNode = Node(value: value)
    
    if let currentHead = head {
      newNode.next = currentHead
      currentHead.previous = newNode
    } else {
      tail = newNode
    }
    
    head = newNode
  }
  
  //addTo Tail
  func append(value: T) {
    let newNode = Node(value: value)
    
    if let currentTail = tail {
      newNode.previous = currentTail
      currentTail.next = newNode
    } else {
      head = newNode
    }
    
    tail = newNode
  }
  
  var first: Node? {
    print("first")
    return head
  }
//
//  // need last?
//
//  var count: Int {
//
//    //possible O(1) by keeping track with adds and removes
//    print("count")
//    guard var currentHead = head else { return 0 }
//
//    var count = 1
//    while let next = currentHead.next {
//      count += 1
//      currentHead = next
//    }
//
//    return count
//  }
//
//  var isEmpty: Bool {
//    print("isEmpty")
//    return head == nil
//  }
  
  
  
}

extension DoublyLL : Collection  {
  
  typealias Element = DoublyLLNode<T>
  
  //  public typealias Index = Int
  // make value the Element?
  
  var startIndex: Int {
    print("start index")
    return 0
  }
  
  //check if isEmpty accounts for no items
  var endIndex: Int {
    print("end index")
    return count
  }
  
  
  subscript(position: Int) -> Node {
    
    // trouble working with any unwrapping condition here without optional return
    // does it matter which error?  subscript out of range causes runtime anyways
    
    if position == 0 {
      print("subscript = 0")
      return first!
    } else {
      var node = first!.next
      for _ in 1..<position {
        print("subscript cycle")
        node = node?.next
        if node == nil {
          break
        }
      }
      return node!
    }
  }
  
  //could change above with this to return a value instead of a node
  
  //  public subscript(index: Int) -> T {
  //    let node = node(atIndex: index)
  //    return node.value
  //  }
  
  func index(after i: Int) -> Int {
    print("index after")
    return i + 1
  }
  
}



// source

//@inlinable
//public var isEmpty: Bool {
//  return startIndex == endIndex
//}

//@inlinable
//public var first: Element? {
//  let start = startIndex
//  if start != endIndex { return self[start] }
//  else { return nil }
//}


//@inlinable
//public var count: Int {
//  return distance(from: startIndex, to: endIndex)
//}

//@inlinable
//public func map<T>(
//  _ transform: (Element) throws -> T
//  ) rethrows -> [T] {
//  // TODO: swift-3-indexing-model - review the following
//  let n = self.count
//  if n == 0 {
//    return []
//  }
//
//  var result = ContiguousArray<T>()
//  result.reserveCapacity(n)
//
//  var i = self.startIndex
//
//  for _ in 0..<n {
//    result.append(try transform(self[i]))
//    formIndex(after: &i)
//  }
//
//  _expectEnd(of: self, is: i)
//  return Array(result)
//}
