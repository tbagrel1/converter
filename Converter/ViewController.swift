//
//  ViewController.swift
//  Converter
//
//  Created by Thomas Bagrel on 16/09/2020.
//  Copyright © 2020 Thomas BAGREL. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exchangeRate.dataSource = dataSource
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    var dataSource: ExchangeRateDataSource = ExchangeRateDataSource()
    
    @IBOutlet weak var amount: NSTextField!
    @IBOutlet weak var exchangeRate: NSComboBox!
    @IBOutlet weak var result: NSTextField!
    
    @IBAction func compute(_ sender: Any) {
        let floatAmount = self.amount.floatValue
        let floatExchangeRate = self.exchangeRate.floatValue
        let floatResult = floatAmount * floatExchangeRate
        self.result.floatValue = floatResult
    }
}

