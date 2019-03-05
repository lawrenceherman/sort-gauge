//
//  Extensions.swift
//  sort
//
//  Created by Lawrence Herman on 3/5/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit

extension UIColor {
  static var color1: UIColor {
    return UIColor.purple
  }
  
  static var color2: UIColor {
    return UIColor.red
  }
}


extension UIView {

  func addColor1Border() {
    self.layer.borderColor = UIColor.color1.cgColor
    self.layer.cornerRadius = 10
    self.layer.borderWidth = 5
  }
  

}
// open class
