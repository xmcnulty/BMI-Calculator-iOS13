//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightLabel.text = BMIUtilities.formatHeight(heightSlider.value)
        weightLabel.text = BMIUtilities.formatWeight(weightSlider.value)
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = BMIUtilities.formatHeight(sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = BMIUtilities.formatWeight(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = BMIUtilities.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        print(bmi)
    }
}

