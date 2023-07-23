//
//  ImageViews.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 23/07/2023.
//

import UIKit

struct ImageViews {
    //MARK: - Bitcoin image
    let btcImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bitcoin")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func btcImageAnchor(stack: UIStackView){
        btcImage.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        btcImage.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 30).isActive = true
        btcImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btcImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    let ethImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ethereum")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func ethImageAnchor(stack: UIStackView){
        ethImage.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        ethImage.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 30).isActive = true
        ethImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        ethImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    let litImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "litecoin")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func litImageAnchor(stack: UIStackView){
        litImage.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        litImage.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 30).isActive = true
        litImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        litImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    let solImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "solana")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func solImageAnchor(stack: UIStackView){
        solImage.centerYAnchor.constraint(equalTo: stack.centerYAnchor).isActive = true
        solImage.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 30).isActive = true
        solImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        solImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
