//
//  Tester.swift
//  sort
//
//  Created by Lawrence Herman on 11/24/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation


class Tester {
  
  
  var singlyLL: SinglyLL!
  
  
  init(completionHandler: @escaping ()->()) {
    
    singlyLL = SinglyLL()
    
    for x in 0..<1_000_000 {
      //      print(x)
      print("init \(x)")
      singlyLL.append(value: x)
      
      
    }
    
    completionHandler()
  
  
  
  }
  
  deinit {
    print("Tester deinit")
  }
  
  
  
  
  
  
  
  
  
  
}
