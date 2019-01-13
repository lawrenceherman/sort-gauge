//
//  FirstTabView.swift
//  sort
//
//  Created by Lawrence Herman on 1/12/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit

class FirstTabView: UIView {
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
  
  
  
}





















let testButton: UIButton = {
  let button = UIButton()
  
  
  button.backgroundColor = .white
  button.setTitleColor(.black, for: .normal)
  button.setTitle("Test", for: .normal)
  button.translatesAutoresizingMaskIntoConstraints = false
  
  
  
  return button
}()
