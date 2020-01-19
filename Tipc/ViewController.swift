//
//  ViewController.swift
//  Tipc
//
//  Created by Heart on 1/17/20.
//  Copyright © 2020 Heart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmt: UILabel!
    
    @IBOutlet weak var billAmt: UITextField!
    
    @IBOutlet weak var totalAmt: UILabel!
    
    @IBOutlet weak var Segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func tipCalc(_ sender: Any) {
        let tipp = [0.15, 0.18, 0.2]
        
        let bill = Double(billAmt.text!) ?? 0
        
        let tip = bill * tipp[Segment.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipAmt.text = String(format: "%.2f", tip)
        totalAmt.text = String(format: "%.2f", total)
    }
}

