//
//  BSTNoNodeClass.swift
//  sort
//
//  Created by Lawrence Herman on 3/2/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//
















//extension BinaryTree {
//
//  func traverse() {
//    print("\nPRE-ORDER TRAVERSE")
//    self.preorder(self.rootNode)
//    print("\n\nIN-ORDER TRAVERSE")
//    self.inorder(self.rootNode)
//    print("\n\nPOST-ORDER TRAVERSE")
//    self.postorder(self.rootNode)
//    print("\n")
//  }
//
//  // NOTE : LEFT IS ALWAYS LEFT OF RIGHT
//  // NLR : NODE(i.e. Root/Parent Node) LEFT RIGHT
//
//  // LNR : LEFT NODE RIGHT
//  private func inorder(_ node: TreeNode<T>?) {
//    guard let _ = node else { return }
//    self.inorder(node?.leftNode)
//    print("\(node!.data)", terminator: " ")
//    self.inorder(node?.rightNode)
//  }
//
//  // NLR : NODE LEFT RIGHT
//  private func preorder(_ node: TreeNode<T>?) {
//    guard let _ = node else { return }
//    print("\(node!.data)", terminator: " ")
//    self.preorder(node?.leftNode)
//    self.preorder(node?.rightNode)
//  }
//
//  // LRN :  LEFT RIGHT NODE
//  private func postorder(_ node: TreeNode<T>?) {
//    guard let _ = node else { return }
//    self.postorder(node?.leftNode)
//    self.postorder(node?.rightNode)
//    print("\(node!.data)", terminator: " ")
//  }
//}
