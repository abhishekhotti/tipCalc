//
//  ViewController.swift
//  tipCalc
//
//  Created by Abhishek Hotti on 8/31/18.
//  Copyright © 2018 Abhishek Hotti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func calcTip(_ sender: AnyObject) {
        
        let tipPercent = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[percentSelector.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
    }
}

