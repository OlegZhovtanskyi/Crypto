//
//  CryptoViewController.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 14/07/2023.
//

import UIKit

var stack = Stack()
var label = LabeledElement()
var model = CryptoModel()


class CryptoViewController: UIViewController {
    
    override func viewDidLoad()  {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.addSubview(stack.mainStack)
        stack.mainStackAnchor(view: view)
        stack.mainStack.addSubview(label.mainLabel)
        label.labelAnchor(stack: stack.mainStack)
        setData()
    }
    
    func setData(){
        DispatchQueue.main.async {
            Task {
                do {
                    let result = try await model.getData()
                    label.mainLabel.text = result.asset_id_base
                } catch {
                    print("Error fetching data: \(error)")
                }
            }
        }
    }
    
}
