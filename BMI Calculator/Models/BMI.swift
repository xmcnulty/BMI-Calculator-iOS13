//
//  BMI.swift
//  BMI Calculator
//
//  Created by Xavier McNulty on 3/6/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float) {
        self.value = value
        
        if value < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        } else if value <= 24.9 {
            advice = "Fit as a fiddle."
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
    }
    
    func formatted() -> String {
        return String(format: "%.1f", self.value)
    }
}
