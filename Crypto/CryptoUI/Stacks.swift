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
        stack.backgroundColor = UIColor.clear
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
        stack.backgroundColor = .clear
        return stack
    }()
    
    func pickerStackAnchor(view: UIView){
        pickerStack.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 10).isActive = true
        pickerStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        pickerStack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    //MARK: - Stack for crypto currencies
    
    let cryptoStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.backgroundColor = .clear
        return stack
    }()
    
    
    func cryptoStackAnchor(view: UIView){
        cryptoStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        cryptoStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        cryptoStack.heightAnchor.constraint(equalToConstant: 400).isActive = true
    }
    
    func cryptoStacAddSubView(){
        let array = [btcStack, ethStack, solStack, litStack]
        array.forEach {
            cryptoStack.addSubview($0)
        }
    }
    
    //MARK: - Bitcoin horizontal stack
    
    let btcStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.backgroundColor = .clear
        return stack
    }()
    
    func btcStackAnchor(view: UIView){
        btcStack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        btcStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        btcStack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    //MARK: - Ethereum horizontal stack
    
    let ethStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.backgroundColor = .clear
        return stack
    }()
    
    func ethStackAnchor(view: UIView){
        ethStack.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        ethStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        ethStack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    //MARK: - Litecoin horizontal stack
    
    let litStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.backgroundColor = .clear
        return stack
    }()
    
    func litStackAnchor(view: UIView){
        litStack.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        litStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        litStack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    //MARK: - Solana hotizontal stack
    
    let solStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.backgroundColor = .clear
        return stack
    }()
    
    func solStackAnchor(view: UIView){
        solStack.topAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        solStack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        solStack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
}
