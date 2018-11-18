//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var first: Int?
  var tempClass: TempClass?
  
  override func viewDidLoad() {
    super.viewDidLoad()

  
    let x = SinglyLL()

    x.append(value: 3)
    x.append(value: 4)
    x.append(value: 8)

    print(x.printHeadToTail())
  
  print("Hello \(factorial(5))!")
  
  
  }







}


class TempClass {
  
  var x = 1
  
  
  
}
