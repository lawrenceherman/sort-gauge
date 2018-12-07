//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  //  var singlyLL: SinglyLL!
  var tester: Tester!
  
  let testButton: UIButton = {
    let button = UIButton()
    
    
    button.backgroundColor = .white
    button.setTitleColor(.black, for: .normal)
    button.setTitle("Test", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    
    
    
    
    return button
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .red
    
    view.addSubview(testButton)
    
    testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    testButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
    testButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
    
    testButton.addTarget(self, action: #selector(nilTester), for: .touchUpInside)
    
  }
  
  @objc func nilTester() {
    
    print("nil tester")
    
    let testQueue = DispatchQueue.init(label: "test queue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)

    testQueue.async {
      self.tester = nil

    }

//
//    tester = nil
    
    
    
    //    tester = nil
    
  }
  
  func empty() {
    
    
  
  
  
  }
  
  
  override func viewDidAppear(_ animated: Bool) {
    
    
    tester = Tester(completionHandler: empty)
    
    
    
    
    
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


