//
//  Tester.swift
//  sort
//
//  Created by Lawrence Herman on 11/24/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//
//
//import Foundation
//
//
//class Tester {
//  
//  
//  var singlyLL: SinglyLL! {
//    willSet {
//      print("singlyLL willset")
//    }
//    
//    
//  }
//  
//  
//  init(completionHandler: ()->()) {
//    
//    singlyLL = SinglyLL()
//    
//    for x in 0..<1_000_000 {
//      //print(x)
//      print("init \(x)")
//      singlyLL.append(value: x)
//      
//      
//    }
//    
//
//    
//    
//    
//    completionHandler()
//  
//  
//  
//  }
//  
//  deinit {
//    print("Tester deinit")
//  }
//  
//  
//  
//  
//}
