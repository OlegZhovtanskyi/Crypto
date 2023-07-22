//
//  Picker.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 20/07/2023.
//

import UIKit

struct PickerElement {
    let picker: UIPickerView = {
        let picker = UIPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.setValue(UIColor.white, forKey: "textColor")
        return picker
    }()
    
    func pikcerAnchor(stack: UIStackView){
        picker.centerXAnchor.constraint(equalTo: stack.centerXAnchor).isActive = true
        picker.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
    }
}
