//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit



extension DSType: UIGestureRecognizerDelegate {
  //
  //  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  //
  //
  //
  //  }
  
  
}


class DSType: UIViewController {
  
  var currentDS = BST()
  var dsTypeView = DSTypeView()
  var selectedDS = SelectedDataStructure.linkedList
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("FirstTabVC view did load")
    
    
    
    navigationController?.navigationBar.isTranslucent = false
    
    dsTypeView.generateDSButton.addTarget(self, action: #selector(generateDS), for: .touchUpInside)
    
    let arrayGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let linkedListRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let treeRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    
    dsTypeView.arrayContainerView.addGestureRecognizer(arrayGestureRecognizer)
    dsTypeView.linkedListContainerView.addGestureRecognizer(linkedListRecognizer)
    dsTypeView.treeContainerView.addGestureRecognizer(treeRecognizer)
    
    dsTypeView.arrayContainerView.tag = 0
    dsTypeView.linkedListContainerView.tag = 1
    dsTypeView.treeContainerView.tag = 2
    
    arrayGestureRecognizer.delegate = self
    linkedListRecognizer.delegate = self
    treeRecognizer.delegate = self
  }
  
  @objc func test(sender: UITapGestureRecognizer) {
    
    switch sender.view?.tag {
    case 0:
      print("array tap")
    case 1:
      print("linked list tap")
    case 2:
      print("tree tap")
    default:
      print("array tap")
    }
    
  }
  
  enum SelectedDataStructure {
    case array
    case linkedList
    case tree
  }
  
  override func loadView() {
    print("FirstTabVC loadView")
    view = dsTypeView
  }
  
  override func viewWillAppear(_ animated: Bool) {
    print("FirstTabVC viewWillAppear")
  }
  
  
  @objc func generateDS() {
    print("generateDS")

    if let ntextFieldValue = Int(dsTypeView.nTextField.text!) {
      
      
      let y = 0...100
      
      
      for _ in 1...ntextFieldValue {
        print("append")
        currentDS.append(value: Int.random(in: y))
      }
      
      
    } else {
      print("Enter a value for n")
      //alert
    }
    
    
    
    
//    for i in currentDS {
//      print(i.value)
//    }
//
//
//
//    print(currentDS.isEmpty)
    
//    print(currentDS[3].value)
  
  
  
  }
  
  
  
  
  
  
  
  override func viewDidAppear(_ animated: Bool) {
    
    
    //    tester = Tester(completionHandler: empty)
    
    //    tester = Tester()
    
    //    singlyLL = SinglyLL()
    //
    //    for x in 0..<1_000_000 {
    ////      print(x)
    //      singlyLL.append(value: x)
    //      print("first loop")
    //
    //    }
    //
    
    
    //   singlyLL = nil
    
    //    for _ in 0..<1000 {
    //      let x = singlyLL.popHead()
    ////      print("pop")
    ////      print(x?.value)
    //      print("second loop")
    //    }
    //
    //    for _ in 0..<1_000 {
    ////      print(x)
    ////      guard let x = singlyLL.popHead() else { return }
    ////      print(x.value!)
    ////
    //
    //
    //
    //
    //    }
    
  }
  
}


