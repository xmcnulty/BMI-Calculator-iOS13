//
//  BMICalculator.swift
//  BMI Calculator
//
//  Created by Xavier McNulty on 3/5/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct BMICalculator {
    static let shared = BMICalculator()
    
    static func calculateBMI(weight: Float, height: Float) -> BMI {
        let bmiValue = weight / (height * height)
        return BMI(value: bmiValue)
    }
}
