//
//  ExchangeRateDataSource.swift
//  Converter
//
//  Created by Thomas Bagrel on 16/09/2020.
//  Copyright © 2020 Thomas BAGREL. All rights reserved.
//

import Cocoa

class ExchangeRateDataSource: NSObject, NSComboBoxDataSource {
    var exchangeRates = ["1.14", "1.23", "6.9754"]
    
    func numberOfItems(in comboBox: NSComboBox) -> Int {
        return self.exchangeRates.count
    }

    func comboBox(_ comboBox: NSComboBox, objectValueForItemAt index: Int) -> Any? {
        return self.exchangeRates[index]
    }
}
