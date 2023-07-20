//
//  Picker.swift
//  Crypto
//
//  Created by Oleg Zhovtanskyi on 19/07/2023.
//

import UIKit

class Picker: NSObject, UIPickerViewDataSource {
    private let data = ["USD", "UAH", "GBP", "CAD"]
    
    var picker: UIPickerView = {
        let picker = UIPickerView()
        return picker
    }()
    
    
    override init(){
        super.init()
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }

}



