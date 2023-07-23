//
//  CryptoViewController_Extensions.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 22/07/2023.
//

import UIKit

extension CryptoViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return constants.currencies.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return constants.currencies[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        constants.model.setData(constants.currencies[row], "BTC") {cryptoCurrency, valutCurrency, rate in
            self.constants.label.btcPriceLabel.text = String(format: "%0.3f", rate) + " " + self.constants.currencies[row]
        }
        
        constants.model.setData(constants.currencies[row], "ETH") {cryptoCurrency, valutCurrency, rate in
            self.constants.label.ethPriceLabel.text = String(format: "%0.3f", rate) + " " + self.constants.currencies[row]
        }
        
        constants.model.setData(constants.currencies[row], "SOL") {cryptoCurrency, valutCurrency, rate in
            self.constants.label.litPriceLabel.text = String(format: "%0.3f", rate) + " " + self.constants.currencies[row]
        }
        
        constants.model.setData(constants.currencies[row], "LIT") {cryptoCurrency, valutCurrency, rate in
            self.constants.label.solPriceLabel.text = String(format: "%0.3f", rate) + " " + self.constants.currencies[row]
        }
    }
    
}
