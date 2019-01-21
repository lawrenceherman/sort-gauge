//
//  FirstTabView.swift
//  sort
//
//  Created by Lawrence Herman on 1/12/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit

class FirstTabView: UIView {
  
  let nTextField: UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .purple
    textField.keyboardType = .decimalPad
    textField.minimumFontSize = 10
    textField.font = UIFont(name: "Times", size: 30.0)
    textField.adjustsFontSizeToFitWidth = false
    return textField
  }()
  
  let arrayContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .purple
    view.isHidden = false
    return view
  }()
  
  let arrayLabel: UILabel = {
    let label = UILabel()
    label.text = "Array"
    label.textAlignment = .center
    return label
  }()
  
  let linkedListContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    return view
  }()
  
  let linkedListLabel: UILabel = {
    let label = UILabel()
    label.text = "Linked List"
    label.textAlignment = .center
    return label
  }()
  
  let linkedListSC: UISegmentedControl = {
    let segementedControl = UISegmentedControl(items: ["Singly", "Doubly"])
    segementedControl.selectedSegmentIndex = 0
    return segementedControl
  }()

  let treeContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .orange
    return view
  }()

  let treeLabel: UILabel = {
    let label = UILabel()
    label.text = "Tree"
    label.textAlignment = .center
    return label
  }()
  
  let generateDSButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .purple
    button.setTitleColor(.black, for: .normal)
    button.setTitle("Test", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubviews()
    setConstraints()
    
    backgroundColor = .brown
  }
  
  func addSubviews() {
    
    addSubview(nTextField)

    addSubview(arrayContainerView)
    arrayContainerView.addSubview(arrayLabel)
    addSubview(generateDSButton)
    
    addSubview(linkedListContainerView)
    linkedListContainerView.addSubview(linkedListLabel)
    linkedListContainerView.addSubview(linkedListSC)

    addSubview(treeContainerView)
    treeContainerView.addSubview(treeLabel)
  }
  
  func setConstraints() {

    nTextField.translatesAutoresizingMaskIntoConstraints = false
    nTextField.topAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.topAnchor, multiplier: 2.0).isActive = true
    nTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    nTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    nTextField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.08).isActive = true
    
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
    
    linkedListContainerView.translatesAutoresizingMaskIntoConstraints = false
    linkedListContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    linkedListContainerView.topAnchor.constraint(equalToSystemSpacingBelow: arrayContainerView.bottomAnchor, multiplier: 0.0).isActive = true
    linkedListContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    linkedListContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    linkedListLabel.translatesAutoresizingMaskIntoConstraints = false
    linkedListLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    linkedListLabel.topAnchor.constraint(equalToSystemSpacingBelow: linkedListContainerView.topAnchor, multiplier: 3.0).isActive = true
    linkedListLabel.widthAnchor.constraint(equalTo: linkedListContainerView.widthAnchor, multiplier: 0.5).isActive = true
    linkedListLabel.heightAnchor.constraint(equalTo: linkedListContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    linkedListSC.translatesAutoresizingMaskIntoConstraints = false
    linkedListSC.topAnchor.constraint(equalToSystemSpacingBelow: linkedListLabel.bottomAnchor, multiplier: 3.0).isActive = true
    linkedListSC.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    linkedListSC.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
    
    treeContainerView.translatesAutoresizingMaskIntoConstraints = false
    treeContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    treeContainerView.topAnchor.constraint(equalToSystemSpacingBelow: linkedListContainerView.bottomAnchor, multiplier: 0.0).isActive = true
    treeContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    treeContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true

    treeLabel.translatesAutoresizingMaskIntoConstraints = false
    treeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    treeLabel.topAnchor.constraint(equalToSystemSpacingBelow: treeContainerView.topAnchor, multiplier: 3.0).isActive = true
    treeLabel.widthAnchor.constraint(equalTo: treeContainerView.widthAnchor, multiplier: 0.5).isActive = true
    treeLabel.heightAnchor.constraint(equalTo: treeContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    generateDSButton.translatesAutoresizingMaskIntoConstraints = false
    generateDSButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    generateDSButton.bottomAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.bottomAnchor, multiplier: -20.0).isActive = true
    generateDSButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    generateDSButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
    
  }
  
  
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}





















