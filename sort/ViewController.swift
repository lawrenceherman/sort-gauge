//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let singlyLL = SinglyLL()

  
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
    
    for x in 0..<1_000_000 {
      print(x)
      singlyLL.append(value: Int.random(in: 0...100))
      
      
    }
    
//    singlyLL.printHeadToTail()
    
    for x in 0..<1_000_000 {
      print(x)
      singlyLL.removeHead()
    }
  
  
  
  
  
  
  
  }





}


class TempClass {
  
  var x = 1
  
  
  
}
