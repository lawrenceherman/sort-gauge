//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit



extension FirstTabVC: UIGestureRecognizerDelegate {
  //
  //  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  //
  //
  //
  //  }
  
  
  
}


class FirstTabVC: UIViewController {
  
  var currentDS = DoublyLL<Int>()
  var ftView = FirstTabView()
  var selectedDS = SelectedDataStructure.linkedList
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("FirstTabVC view did load")
    
    navigationController?.navigationBar.isTranslucent = false
    
    ftView.generateDSButton.addTarget(self, action: #selector(generateDS), for: .touchUpInside)
    
    let arrayGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let linkedListRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let treeRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    
    ftView.arrayContainerView.addGestureRecognizer(arrayGestureRecognizer)
    ftView.linkedListContainerView.addGestureRecognizer(linkedListRecognizer)
    ftView.treeContainerView.addGestureRecognizer(treeRecognizer)
    
    ftView.arrayContainerView.tag = 0
    ftView.linkedListContainerView.tag = 1
    ftView.treeContainerView.tag = 2
    
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
    view = ftView
  }
  
  override func viewWillAppear(_ animated: Bool) {
    print("FirstTabVC viewWillAppear")
  }
  
  
  @objc func generateDS() {
    print("generateDS")

    if let ntextFieldValue = Int(ftView.nTextField.text!) {
      
      
      let y = 0...100
      
      
      for _ in 1...ntextFieldValue {
        print("append")
        currentDS.append(value: Int.random(in: y))
      }
      
      
    } else {
      print("Enter a value for n")
      //alert
    }
    
    for i in currentDS {
      print(i.value)
    }
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


