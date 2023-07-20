//
//  Labels.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 20/07/2023.
//

import UIKit

struct LabeledElement {
    let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    let bitcoinLabel: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    
    func labelAnchor(stack: UIStackView){
        mainLabel.centerXAnchor.constraint(equalTo: stack.centerXAnchor).isActive = true
    }
}
