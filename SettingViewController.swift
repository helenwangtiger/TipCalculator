//
//  SettingViewController.swift
//  Tip Calculator
//
//  Created by Qian Wang on 3/2/17.
//  Copyright © 2017 Qian Wang. All rights reserved.
//

import UIKit


class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
        
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
           
        
         
    @IBAction func tipSelection(sender: AnyObject) {
        
        let tipChange = tipSet.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(tipChange, forKey: "tipChange")
        defaults.synchronize()
        
    }


}
