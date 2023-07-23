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
        label.text = "Select currency"
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func mainLabelAnchor(stack: UIStackView){
        mainLabel.centerXAnchor.constraint(equalTo: stack.centerXAnchor).isActive = true
        mainLabel.topAnchor.constraint(equalTo: stack.topAnchor, constant: 50).isActive = true
    }
    
    //MARK: - Bitcoin labels
    let btcLabel: UILabel = {
        let label = UILabel()
        label.text = "Bitcoin"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func btcLabelAnchor(stack: UIStackView){
        btcLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        btcLabel.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 90).isActive = true
    }
    
    var btcPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func btcPriceLabelAnchor(stack: UIStackView){
        btcPriceLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        btcPriceLabel.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -30).isActive = true
    }
    
    
    //MARK: - Ethereum labels
    let ethLabel: UILabel = {
        let label = UILabel()
        label.text = "Ethereum"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func ethLabelAnchor(stack: UIStackView){
        ethLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        ethLabel.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 90).isActive = true
    }
    
    var ethPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func ethPriceLabelAnchor(stack: UIStackView){
        ethPriceLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        ethPriceLabel.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -30).isActive = true
    }
    
    
    //MARK: - Litecoin labels
    let litLabel: UILabel = {
        let label = UILabel()
        label.text = "Litecoin"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func litLabelAnchor(stack: UIStackView){
        litLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        litLabel.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 90).isActive = true
    }
    
    var litPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func litPriceLabelAnchor(stack: UIStackView){
        litPriceLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        litPriceLabel.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -30).isActive = true
    }
    
    
    //MARK: - Solana labels
    let solLabel: UILabel = {
        let label = UILabel()
        label.text = "Solana"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func solLabelAnchor(stack: UIStackView){
        solLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        solLabel.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 90).isActive = true
    }
    
    var solPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    func solPriceLabelAnchor(stack: UIStackView){
        solPriceLabel.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        solPriceLabel.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -30).isActive = true
    }
    
    
}
