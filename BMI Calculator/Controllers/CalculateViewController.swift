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
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightLabel.text = FormatUtils.formatHeight(heightSlider.value)
        weightLabel.text = FormatUtils.formatWeight(weightSlider.value)
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = FormatUtils.formatHeight(sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = FormatUtils.formatWeight(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi = BMICalculator.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmi = bmi
        }
    }
}

