//
//  SinglyLL.swift
//  sort
//
//  Created by Lawrence Herman on 11/14/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

//import Foundation


class SinglyLLNode<T: Comparable> {
  var next: SinglyLLNode?
  var value: T
  
  init(_ value: T) {
    self.value = value
    print("init \(value)")
    
  }
  
  deinit {
    print("deinit \(String(describing: value))")
  }
}

extension SinglyLLNode: Comparable {
  
  static func == (lhs: SinglyLLNode<T>, rhs: SinglyLLNode<T>) -> Bool {
    return lhs.value == rhs.value
  }
  
  static func < (lhs: SinglyLLNode<T>, rhs: SinglyLLNode<T>) -> Bool {
    return lhs.value < rhs.value
  }
}


//struct vs class here
struct SinglyLLIterator<T: Comparable>: IteratorProtocol {
//  typealias Element = SinglyLLNode<T>

  var currentNode: Element?

  init(startNode: Element?) {
    print("iterator protocol init")
    currentNode = startNode
  }

  mutating func next() -> SinglyLLNode<T>? {
    print("next")
    let node = currentNode
    currentNode = currentNode?.next
    return node
  }
}


// check memory for Struc SinglyLL
extension SinglyLL: Sequence {
  typealias Iterator = SinglyLLIterator<T>

  func makeIterator() -> SinglyLLIterator<T> {
    print("make iterator")
    return SinglyLLIterator(startNode: head)
  }
}


//struct or class
struct SinglyLL<T: Comparable> {
  // first
  var head: SinglyLLNode<T>?
  
  // last
  var tail: SinglyLLNode<T>?
  
  var isEmpty: Bool {
    return head == nil
  }
  
  //  deinit {
  //    print("singlyLL deinit")
  //  }

  var count: Int = 0
  
  
  // possible count
  
  //addToHead, addFirst, this is a push for utilizing removeHead/pop
  mutating func prepend(_ value: T) {
    let newNode = SinglyLLNode(value)
    
    if let currentHead = head {
      newNode.next = currentHead
    } else {
      tail = newNode
    }
    
    head = newNode
  }
  
  
  //addToTail, addLast, this is a push for utilizing removeTail/pop
  mutating func append(_ value: T) {
    let newNode = SinglyLLNode(value)
    
    if let currentTail = tail {
      currentTail.next = newNode
    } else {
      head = newNode
    }
    
    tail = newNode
  }
  
  
  
  //  while let next = node.next {
  //    node = next
  //  }
  
  //
  
  
//  func printHeadToTail() {
//
//    if var currentHead = head {
//
//      repeat  {
//        print(currentHead.value)
//        currentHead = currentHead.next!
//      } while currentHead.next != nil
//
//      // fix. has to be a way not to dupe print here
//      //        print(headNode.value)
//      //        while headNode.next != nil {
//      //          headNode = headNode.next!
//      //          print(headNode.value)
//      //        }
//    }
//  }
  
}

// swift extension Array: RandomAccessCollection, MutableCollection


//The IndexingIterator type is the default iterator for any collection that doesn’t declare its own. It acts as an iterator by using a collection’s indices to step over each value in the collection. Most collections in the standard library use IndexingIterator as their iterator.
//By default, any custom collection type you create will inherit a makeIterator() method that returns an IndexingIterator instance, making it unnecessary to declare your own. When creating a custom collection type, add the minimal requirements of the Collection protocol: starting and ending indices and a subscript for accessing elements. With those elements defined, the inherited makeIterator() method satisfies the requirements of the Sequence protocol.

// Could use either prepend/removeFromHead or append/removeFromTail as stack push/pop
// LIFO.  As long as use same side

// this variable if not necessary if only want to use LL as a stack.  If want to use
// as a queue or if there is need to iterate over list from tail to head we need.

//
//  func clearLL() {
//
//    if head != nil {
//
//
//
//      while head?.next != nil {
//
//
//      }
//
//
//
//
//    }
//

//  }

//Stack protocol oriented approach

//  protocol Stackable {
//    associatedtype Element
//    mutating func push(_ element: Element)
//    func peek() -> Element?
//    mutating func pop() -> Element?
//    mutating func removeAll()
//  }

// Linked list protocol implementation

//  protocol Linkable {
//    associatedtype D
//    var value: D { get }
//    var next: Self? { get set }
//    var previous: Self? { get set }
//
//    init(value: D)
//  }
//



// returnFirst, returnHead
//  func popHead() -> SinglyLLNode? {
//
//    if let headNode = head {
//
//      head = headNode.next
//
//      // check for memory leak
//      return headNode
//
//    } else {
//      return nil
//    }
//
//  }



//  func nodeAt(index: Int) -> Node? {
//
//
//
//
//  }

//  public var first: Node? {
//    return head
//  }







// addToTail, addLast, push
// Would not have this func if SinglyLL did not have the last property.  Having
//  // to cycle over LL without it would cause O(n).
//  func append(value: Int) {
//    let newNode = SinglyLLNode(value: value)
//  }


///starting and ending indices and a subscript for accessing elements. With those elements defined,


//extension SinglyLL: Collection {
//
//
//  subscript(position: Int) -> SinglyLLNode<T> {
//    return head!
//  }
//
//  typealias Element = SinglyLLNode<T>
//  typealias Index = Int
//
//
//
//  var startIndex: Int {
//    return 0
//  }
//
//  var endIndex: Int {
//    get {
//      var i = 0
//      if let currentHead = head {
//
//        return 0
//
//
//      } else {
//        return 0
//      }
//    }
//  }
//
//  func index(after i: Int) -> Int {
//
//
//
//  }
//}
