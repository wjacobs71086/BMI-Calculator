//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let doubleStr = String(format: "%.2f", sender.value)
        heightLabel.text = "\(doubleStr) ft"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value)) Lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

