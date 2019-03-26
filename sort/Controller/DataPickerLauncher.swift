//
//  DataPickerLauncher.swift
//  sort
//
//  Created by Lawrence Herman on 3/25/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit


class DataPickerLauncher {
  
  
  var displayingController: UIViewController!
  var blackView: UIView!
  
  
  func showPicker() {
  
    if let window = UIApplication.shared.keyWindow {
      blackView = UIView()
      blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
      blackView.backgroundColor = .red
      blackView.frame = window.frame
      blackView.alpha = 1
      displayingController.view.addSubview(blackView)
//      window.addSubview(blackView)
//      blackView.alpha = 0
      
 
      
    }
    
    
    blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleBlackViewDismiss)))
    
    
  }
  
  @objc func handleBlackViewDismiss() {
    
   
      blackView.removeFromSuperview()
      blackView.backgroundColor = .blue
      
      
      print("hanldeBlackViewDismiss")
  
 
  
  
  
  
  
  
  
  
  }
  
  
  
  
  
  
  
}
