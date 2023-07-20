//
//  StackView.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 19/07/2023.
//

import UIKit

struct StackView {
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
}
