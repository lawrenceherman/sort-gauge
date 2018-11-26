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
  
  
  init(completionHandler: ()->()) {
    
    singlyLL = SinglyLL()
    
    for x in 0..<1_000_000 {
      //      print(x)
      print("init \(x)")
      singlyLL.append(value: x)
      
      
    }
    
    let testQueue = DispatchQueue.init(label: "test queue", qos: .background, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
    
    testQueue.async {
      self.singlyLL = nil
    }
    
    completionHandler()
  
  
  
  }
  
  deinit {
    print("Tester deinit")
  }
  
  
  
  
  
  
  
  
  
  
}
