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
        view.addSubview(constants.stack.cryptoStack)
        
        
        
        //MARK: - StackView
        constants.stack.mainStackAnchor(view: view)
        constants.stack.mainStack.addSubview(constants.label.mainLabel)
        constants.stack.pickerStackAnchor(view: constants.stack.mainStack)
        constants.stack.pickerStack.addSubview(constants.pickerElement.picker)
        constants.stack.cryptoStackAnchor(view: view)
        constants.stack.cryptoStacAddSubView()
        
        constants.stack.btcStackAnchor(view: constants.stack.cryptoStack)
        constants.stack.ethStackAnchor(view: constants.stack.btcStack)
        constants.stack.litStackAnchor(view: constants.stack.ethStack)
        constants.stack.solStackAnchor(view: constants.stack.litStack)
        
        constants.stack.btcStack.addSubview(constants.images.btcImage)
        constants.stack.ethStack.addSubview(constants.images.ethImage)
        constants.stack.litStack.addSubview(constants.images.litImage)
        constants.stack.solStack.addSubview(constants.images.solImage)
        
        constants.stack.btcStack.addSubview(constants.label.btcLabel)
        constants.stack.btcStack.addSubview(constants.label.btcPriceLabel)
        
        constants.stack.ethStack.addSubview(constants.label.ethLabel)
        constants.stack.ethStack.addSubview(constants.label.ethPriceLabel)
        
        constants.stack.litStack.addSubview(constants.label.litLabel)
        constants.stack.litStack.addSubview(constants.label.litPriceLabel)
        
        constants.stack.solStack.addSubview(constants.label.solLabel)
        constants.stack.solStack.addSubview(constants.label.solPriceLabel)
        
        
        
        
        
        //MARK: - Labels
        constants.label.mainLabelAnchor(stack: constants.stack.mainStack)
        constants.label.btcLabelAnchor(stack: constants.stack.btcStack)
        constants.label.btcPriceLabelAnchor(stack: constants.stack.btcStack)
        
        constants.label.ethLabelAnchor(stack: constants.stack.ethStack)
        constants.label.ethPriceLabelAnchor(stack: constants.stack.ethStack)
        
        constants.label.litLabelAnchor(stack: constants.stack.litStack)
        constants.label.litPriceLabelAnchor(stack: constants.stack.litStack)
        
        constants.label.solLabelAnchor(stack: constants.stack.solStack)
        constants.label.solPriceLabelAnchor(stack: constants.stack.solStack)
        
        //MARK: - Picker
        constants.pickerElement.picker.dataSource = self
        constants.pickerElement.picker.delegate = self
        constants.pickerElement.pikcerAnchor(stack: constants.stack.pickerStack)
        
        
        //MARK: - Images
        constants.images.btcImageAnchor(stack: constants.stack.btcStack)
        constants.images.ethImageAnchor(stack: constants.stack.ethStack)
        constants.images.litImageAnchor(stack: constants.stack.litStack)
        constants.images.solImageAnchor(stack: constants.stack.solStack)
    }
    
}
