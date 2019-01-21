//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class FirstTabVC: UIViewController {
  
  var singlyLL = SinglyLL<Int>()
//  var tester: Tester!
  
  var ftView = FirstTabView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("FirstTabVC view did load")
    
    navigationController?.navigationBar.isTranslucent = false
    
    ftView.generateDSButton.addTarget(self, action: #selector(generateDS), for: .touchUpInside)
    
    
    singlyLL.append(5)
    singlyLL.append(10)
    singlyLL.append(15)
    singlyLL.append(20)
    
    for node in singlyLL {
      print(node.value)
    }
//
//    print(singlyLL.head?.value)
//    print(singlyLL.printHeadToTail())
   
    
    
    
    
  
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
    
    let x = Int(ftView.nTextField.text!)
    print(x)
  
    
    // need to generate linked list that appends n times and measure
    // time of
    
//    let y = SinglyLL()
//
    
    
    
    
    
    
    //    let testQueue = DispatchQueue.init(label: "test queue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
    //
    //    testQueue.async {
    //      self.tester = nil
    //
    //    }
    //
    
    
  }
  
  func empty() {
    
    
    
    
    
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


