//
//  FirstTabView.swift
//  sort
//
//  Created by Lawrence Herman on 1/12/19.
//  Copyright © 2019 Lawrence Herman. All rights reserved.
//

import UIKit
class FirstTabView: UIView {
  
  let testButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .purple
    button.setTitleColor(.black, for: .normal)
    button.setTitle("Test", for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  let linkedListContainerView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    return view
  }()
  
  let linkedListLabel: UILabel = {
    let label = UILabel()
    label.text = "Linked List"
    return label
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
    return label
  }()
  
//
//  let stackView: UIStackView = {
//    let stackView = UIStackView()
//
//    stackView.backgroundColor = .red
//
//
//
//
//    return stackView
//  }()

  
  
  let textField: UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .purple
    textField.keyboardType = .decimalPad
    textField.minimumFontSize = 10
    textField.font = UIFont(name: "Times", size: 30.0)
    textField.adjustsFontSizeToFitWidth = false
    
    return textField
    
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    

    addSubviews()
    setConstraints()
    
    backgroundColor = .brown
//    testButton.addTarget(self, action: #selector(nilTester), for: .touchUpInside)
    
    
    
  }
  
  func addSubviews() {
    
    addSubview(textField)
//    addSubview(stackView)
    
    addSubview(linkedListContainerView)
    linkedListContainerView.addSubview(linkedListLabel)
    
    
    
    addSubview(arrayContainerView)
    arrayContainerView.addSubview(arrayLabel)
//
//    stackView.addArrangedSubview(testButton)
//    stackView.addArrangedSubview(textField)
  }
  
  func setConstraints() {
    //
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    //    textField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    textField.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 5.0).isActive = true
    textField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
    textField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15).isActive = true
    
    linkedListContainerView.translatesAutoresizingMaskIntoConstraints = false
    linkedListContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    linkedListContainerView.topAnchor.constraint(equalToSystemSpacingBelow: textField.bottomAnchor, multiplier: 5.0).isActive = true
    linkedListContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    linkedListContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    linkedListLabel.translatesAutoresizingMaskIntoConstraints = false
    linkedListLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    linkedListLabel.topAnchor.constraint(equalToSystemSpacingBelow: linkedListContainerView.topAnchor, multiplier: 3.0).isActive = true
    linkedListLabel.widthAnchor.constraint(equalTo: linkedListContainerView.widthAnchor, multiplier: 0.5).isActive = true
    linkedListLabel.heightAnchor.constraint(equalTo: linkedListContainerView.heightAnchor, multiplier: 0.2).isActive = true
    
    
    arrayContainerView.translatesAutoresizingMaskIntoConstraints = false
    arrayContainerView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    arrayContainerView.topAnchor.constraint(equalToSystemSpacingBelow: linkedListContainerView.bottomAnchor, multiplier: 5.0).isActive = true
    arrayContainerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1.0).isActive = true
    arrayContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    arrayLabel.translatesAutoresizingMaskIntoConstraints = false
    arrayLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    arrayLabel.topAnchor.constraint(equalToSystemSpacingBelow: arrayContainerView.topAnchor, multiplier: 3.0).isActive = true
    arrayLabel.widthAnchor.constraint(equalTo: arrayContainerView.widthAnchor, multiplier: 0.5).isActive = true
    arrayLabel.heightAnchor.constraint(equalTo: arrayContainerView.heightAnchor, multiplier: 0.2).isActive = true
    //
////
//    stackView.translatesAutoresizingMaskIntoConstraints = false
//    stackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//    stackView.topAnchor.constraint(equalToSystemSpacingBelow: textField.bottomAnchor, multiplier: 1.0).isActive = true
//    //    stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//    stackView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
//    stackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
//
    
    
//    testButton.translatesAutoresizingMaskIntoConstraints = false
//    testButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//    testButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//    testButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
//    testButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    
    
    
  }
  
  
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}





















