//
//  MainLabel.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 19/07/2023.
//

import UIKit

struct MainLabel {
    let mainLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.text = "Text"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
