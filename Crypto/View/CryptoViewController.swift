//
//  CryptoViewController.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 14/07/2023.
//

import UIKit

final class CryptoViewController: UIViewController {
    var constants = Constans()
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        
        //MARK: - Main View
        view.backgroundColor = UIColor(red: 7.0/255, green: 31.0/255, blue: 66.0/255, alpha: 1.0)
        view.addSubview(constants.stack.mainStack)
        view.addSubview(constants.stack.pickerStack)
//                constants.model.setData()
        
        
        //MARK: - StackView
        constants.stack.mainStackAnchor(view: view)
        constants.stack.mainStack.addSubview(constants.label.mainLabel)
        constants.stack.pickerStackAnchor(view: constants.stack.mainStack)
        constants.stack.pickerStack.addSubview(constants.pickerElement.picker)
        
        
        
        //MARK: - Labels
        constants.label.mainLabelAnchor(stack: constants.stack.mainStack)
        
        
        
        //MARK: - Picker
        constants.pickerElement.picker.dataSource = self
        constants.pickerElement.picker.delegate = self
        constants.pickerElement.pikcerAnchor(stack: constants.stack.pickerStack)
    }
    
}
