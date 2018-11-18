//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


  
  override func viewDidLoad() {
    super.viewDidLoad()

    let x = SinglyLL()
    
    
    x.prepend(value: 4)
    x.prepend(value: 8)
    x.prepend(value: 12)
    x.prepend(value: 10)
    
    x.printHeadToTail()
    
    x.append(value: 14)
    x.append(value: 42)
    x.append(value: 11)
    x.append(value: 100)
    
    x.printHeadToTail()

    print(x.tail?.value)
//
//    var y = Array<Int>()
//    y.append(2)
//    y.insert(3, at: 0)
//    y.remove(at: 5)


  }







}


class TempClass {
  
  var x = 1
  
  
  
}
