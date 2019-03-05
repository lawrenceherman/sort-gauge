//
//  FirstTabView.swift
//  sort
//
//  Created by Lawrence Herman on 1/12/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit

class DSTypeView: UIView {
  
  let nTextField: UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .purple
    textField.keyboardType = .decimalPad
    textField.minimumFontSize = 10
    textField.font = UIFont(name: "Times", size: 30.0)
    textField.adjustsFontSizeToFitWidth = false
    return textField
  }()
  
  let dataTypeButton: UIButton = {
    let button = UIButton()
    button.setTitle("Int", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.backgroundColor = .white
    return button
  }()
  
  let dataTypePicker: UIPickerView = {
    let picker = UIPickerView()
    picker.backgroundColor = .white
    picker.isHidden = true
    return picker
  }()
  
  let arrayContainerView: UIView = {
    let view = UIView()
    view.addColor1Border()
    return view
  }()
  
  let arrayLabel: UILabel = {
    let label = UILabel()
    label.text = "Array"
    label.textAlignment = .center
    return label
  }()
  
  let arraySC: UISegmentedControl = {
    let segementedControl = UISegmentedControl(items: ["Self Allocating", "Reserved Capacity"])
    segementedControl.selectedSegmentIndex = 0
    return segementedControl
  }()
  
  let llContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    return view
  }()
  
  let llLabel: UILabel = {
    let label = UILabel()
    label.text = "Linked List"
    label.textAlignment = .center
    return label
  }()
  
  let llSC: UISegmentedControl = {
    let segementedControl = UISegmentedControl(items: ["Singly", "Doubly"])
    segementedControl.selectedSegmentIndex = 0
    return segementedControl
  }()

  let treeContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    return view
  }()
  
  let treeSC: UISegmentedControl = {
    let segementedControl = UISegmentedControl(items: ["Binary Search", "AVL", "Red-Black", "Heap"])
    segementedControl.selectedSegmentIndex = 0
    return segementedControl
  }()

  let treeLabel: UILabel = {
    let label = UILabel()
    label.text = "Tree"
    label.textAlignment = .center
    return label
  }()
  
  let analyzeDSButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .purple
    button.setTitleColor(.black, for: .normal)
    button.setTitle("Generate Analysis", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setConstraints()
//
    backgroundColor = .white
  }
  
  func addSubviews() {
    
    addSubview(nTextField)
    addSubview(dataTypeButton)
    
    addSubview(dataTypePicker)

    addSubview(arrayContainerView)
    arrayContainerView.addSubview(arrayLabel)
    arrayContainerView.addSubview(arraySC)
 
    
    addSubview(llContainerView)
    llContainerView.addSubview(llLabel)
    llContainerView.addSubview(llSC)

    addSubview(treeContainerView)
    treeContainerView.addSubview(treeLabel)
    treeContainerView.addSubview(treeSC)
    
    addSubview(analyzeDSButton)
  }
  
  func setConstraints() {

    nTextField.translatesAutoresizingMaskIntoConstraints = false
    nTextField.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 2.0).isActive = true
//    nTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

    nTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 3.0).isActive = true
    nTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    nTextField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08).isActive = true
    
    dataTypeButton.translatesAutoresizingMaskIntoConstraints = false
    dataTypeButton.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 2.0).isActive = true
    dataTypeButton.leadingAnchor.constraint(equalToSystemSpacingAfter: nTextField.trailingAnchor, multiplier: 2.0).isActive = true
    dataTypeButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    dataTypeButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08).isActive = true
    
    dataTypePicker.translatesAutoresizingMaskIntoConstraints = false
    
    
    arrayContainerView.translatesAutoresizingMaskIntoConstraints = false
    arrayContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    arrayContainerView.topAnchor.constraint(equalToSystemSpacingBelow: nTextField.bottomAnchor, multiplier: 2.0).isActive = true
    arrayContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    arrayContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    arrayLabel.translatesAutoresizingMaskIntoConstraints = false
    arrayLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    arrayLabel.topAnchor.constraint(equalToSystemSpacingBelow: arrayContainerView.topAnchor, multiplier: 3.0).isActive = true
    arrayLabel.widthAnchor.constraint(equalTo: arrayContainerView.widthAnchor, multiplier: 0.5).isActive = true
    arrayLabel.heightAnchor.constraint(equalTo: arrayContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    arraySC.translatesAutoresizingMaskIntoConstraints = false
    arraySC.centerXAnchor.constraint(equalTo: arrayContainerView.centerXAnchor).isActive = true
    arraySC.topAnchor.constraint(equalToSystemSpacingBelow: arrayLabel.bottomAnchor, multiplier: 3.0).isActive = true
    arraySC.widthAnchor.constraint(equalTo: arrayContainerView.widthAnchor, multiplier: 0.6).isActive = true

    
    llContainerView.translatesAutoresizingMaskIntoConstraints = false
    llContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    llContainerView.topAnchor.constraint(equalToSystemSpacingBelow: arrayContainerView.bottomAnchor, multiplier: 0.0).isActive = true
    llContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    llContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    llLabel.translatesAutoresizingMaskIntoConstraints = false
    llLabel.centerXAnchor.constraint(equalTo: llContainerView.centerXAnchor).isActive = true
    llLabel.topAnchor.constraint(equalToSystemSpacingBelow: llContainerView.topAnchor, multiplier: 3.0).isActive = true
    llLabel.widthAnchor.constraint(equalTo: llContainerView.widthAnchor, multiplier: 0.5).isActive = true
    llLabel.heightAnchor.constraint(equalTo: llContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    llSC.translatesAutoresizingMaskIntoConstraints = false
    llSC.topAnchor.constraint(equalToSystemSpacingBelow: llLabel.bottomAnchor, multiplier: 3.0).isActive = true
    llSC.centerXAnchor.constraint(equalTo: llContainerView.centerXAnchor).isActive = true
    llSC.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    
    treeContainerView.translatesAutoresizingMaskIntoConstraints = false
    treeContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    treeContainerView.topAnchor.constraint(equalToSystemSpacingBelow: llContainerView.bottomAnchor, multiplier: 0.0).isActive = true
    treeContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    treeContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true

    treeLabel.translatesAutoresizingMaskIntoConstraints = false
    treeLabel.centerXAnchor.constraint(equalTo: treeContainerView.centerXAnchor).isActive = true
    treeLabel.topAnchor.constraint(equalToSystemSpacingBelow: treeContainerView.topAnchor, multiplier: 3.0).isActive = true
    treeLabel.widthAnchor.constraint(equalTo: treeContainerView.widthAnchor, multiplier: 0.5).isActive = true
    treeLabel.heightAnchor.constraint(equalTo: treeContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    treeSC.translatesAutoresizingMaskIntoConstraints = false
    treeSC.centerXAnchor.constraint(equalTo: treeContainerView.centerXAnchor).isActive = true
    treeSC.topAnchor.constraint(equalToSystemSpacingBelow: treeLabel.bottomAnchor, multiplier: 3.0).isActive = true
    treeSC.widthAnchor.constraint(equalTo: treeContainerView.widthAnchor, multiplier: 0.8).isActive = true
    
    analyzeDSButton.translatesAutoresizingMaskIntoConstraints = false
    analyzeDSButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    analyzeDSButton.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: -20.0).isActive = true
    analyzeDSButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    analyzeDSButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
    
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}





















