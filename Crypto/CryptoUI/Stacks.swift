//
//  Stacks.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 20/07/2023.
//

import UIKit


struct Stack {
    //MARK: - Main stack
    
    let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.backgroundColor = .red
        return stack
    }()
    
    func mainStackAnchor(view: UIView){
        mainStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        mainStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainStack.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    //MARK: - Picker stack
    
    let pickerStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.backgroundColor = .red
        return stack
    }()
    
    func pickerStackAnchor(view: UIView){
        mainStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        mainStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainStack.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
