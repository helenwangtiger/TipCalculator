//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Qian Wang on 2/28/17.
//  Copyright © 2017 Qian Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var billInput: UITextField!
    @IBOutlet weak var tipText: UITextField!
    @IBOutlet weak var totalText: UITextField!
    @IBOutlet weak var tipChoice: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func closeKeyBoard(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func tipInputValue(sender: AnyObject) {
        let tipRate = [0.18,0.20,0.25]
        let bill = Double(billInput.text!) ?? 0
        let defaults = NSUserDefaults.standardUserDefaults()
       
        if let tipchange = defaults.stringForKey("tipChange") {
            let tip = bill * tipRate[Int(tipchange)!]
           
            let total = bill + tip
            tipText.text = String(format: "$%.2f", tip)
            totalText.text = String(format: "$%.2f", total)
        
        }
        
        
        let tip = bill * tipRate[tipChoice.selectedSegmentIndex]
        let total = bill + tip
        tipText.text = String(format: "$%.2f", tip)
        totalText.text = String(format: "$%.2f", total)
        
        
        
        
        
    }
}

