//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var singlyLL: SinglyLL!
  
  override func viewDidLoad() {
    super.viewDidLoad()

//
//
//    x.prepend(value: 4)
//    x.prepend(value: 8)
//    x.prepend(value: 12)
//    x.prepend(value: 10)
//
//
//    x.append(value: 14)
//    x.append(value: 42)
//    x.append(value: 11)
//    x.append(value: 100)
//
//    x.printHeadToTail()
//
//    let y = x.removeHead()
//    print("    ")
//    print(y?.value)
//
//    print("    ")
//
//    x.printHeadToTail()


    
   
    
//
//    var y = Array<Int>()
//    y.append(2)
//    y.insert(3, at: 0)
//    y.remove(at: 5)


  }


  
  override func viewDidAppear(_ animated: Bool) {
    
    singlyLL = SinglyLL()
    
    for x in 0..<1_000 {
//      print(x)
      singlyLL.append(value: x)
      
      
    }
    
    
    singlyLL = nil

    
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
  
  
    print("finished")

    
    
  
    
    
  
  }





}


