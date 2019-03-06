//
//  ViewController.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import UIKit



extension DSType: UIGestureRecognizerDelegate {
  //
  //  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  //
  //
  //
  //  }
  
  
}

extension DSType: UIPickerViewDelegate, UIPickerViewDataSource {
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerTypes.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerTypes[row]
    
  }
  
  
  // delegate
  
  //  func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
  //    <#code#>
  //  }
  //
  //  func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
  //    <#code#>
  //  }
  
  
  
  
  
}


class DSType: UIViewController {
  
  var currentDS = BSTRecursive()
  var dsTypeView = DSTypeView()
  var selectedDS = SelectedDataStructure.linkedList
  let pickerTypes = ["Int " + String(MemoryLayout<Int>.size) + "Bytes", "Float" + String(MemoryLayout<Float>.size), "Double" + String(MemoryLayout<Double>.size), "String" + String(MemoryLayout<String>.size)]
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("FirstTabVC view did load")
    
    
    navigationController?.navigationBar.isTranslucent = false
    
    dsTypeView.analyzeDSButton.addTarget(self, action: #selector(generateDS), for: .touchUpInside)
    
    dsTypeView.dataTypeButton.addTarget(self, action: #selector(handleDataTypeButtonPress), for: .allTouchEvents)
    
    let arrayGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let linkedListRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    let treeRecognizer = UITapGestureRecognizer(target: self, action: #selector(test))
    
    dsTypeView.arrayContainerView.addGestureRecognizer(arrayGestureRecognizer)
    dsTypeView.llContainerView.addGestureRecognizer(linkedListRecognizer)
    dsTypeView.treeContainerView.addGestureRecognizer(treeRecognizer)
    
    dsTypeView.arrayContainerView.tag = 0
    dsTypeView.llContainerView.tag = 1
    dsTypeView.treeContainerView.tag = 2
    
    arrayGestureRecognizer.delegate = self
    linkedListRecognizer.delegate = self
    treeRecognizer.delegate = self
    
    dsTypeView.dataTypePicker.delegate = self
    dsTypeView.dataTypePicker.dataSource = self
    
  }
  
  @objc func handleDataTypeButtonPress() {
    
    dsTypeView.dataTypePicker.isHidden = false
    
    
    
    
    
    
    
    
    print("button press")
    
    
    
    
  }
  
  @objc func test(sender: UITapGestureRecognizer) {
    
    switch sender.view?.tag {
    case 0:
      print("array tap")
    case 1:
      print("linked list tap")
    case 2:
      print("tree tap")
    default:
      print("array tap")
    }
    
  }
  
  enum SelectedDataStructure {
    case array
    case linkedList
    case tree
  }
  
  override func loadView() {
    print("FirstTabVC loadView")
    view = dsTypeView
  }
  
  override func viewWillAppear(_ animated: Bool) {
    print("FirstTabVC viewWillAppear")
  }
  
  
  @objc func generateDS() {
    print("generateDS")
    
    
    //    print(MemoryLayout<BST>.size)
    //    print(MemoryLayout<BSTNode>.size)
    //
    
    
    
    if let ntextFieldValue = Int(dsTypeView.nTextField.text!) {
      
      
      let y = 0...100
      
      
      for _ in 1...ntextFieldValue {
        let x = Int.random(in: y)
        currentDS.insert(value: x)
        print(x)
      }

      
    } else {
      print("Enter a value for n")
      //alert
    }
    
  
    
//        for i in currentDS {
//          print(i.value)
//        }
    //
    //
    //
    //    print(currentDS.isEmpty)
    
    //    print(currentDS[3].value)
    
    
    
  }
  
  
  
  
  
  
  
  override func viewDidAppear(_ animated: Bool) {
    
    
    //    tester = Tester(completionHandler: empty)
    
    //    tester = Tester()
    
    //    singlyLL = SinglyLL()
    //
    //    for x in 0..<1_000_000 {
    ////      print(x)
    //      singlyLL.append(value: x)
    //      print("first loop")
    //
    //    }
    //
    
    
    //   singlyLL = nil
    
    //    for _ in 0..<1000 {
    //      let x = singlyLL.popHead()
    ////      print("pop")
    ////      print(x?.value)
    //      print("second loop")
    //    }
    //
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
    
  }
  
}


