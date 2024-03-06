//
//  BMIUtilities.swift
//  BMI Calculator
//
//  Created by Xavier McNulty on 3/4/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation


/// Utility functions for BMI calculator app.
class BMIUtilities {
    
    /// Converts floating point height value to String for display. Returns a number with two decimals followed by units (m)
    /// - Parameter height: height as float
    /// - Returns: String with two height formated to two decimal places followed by units (m)
    static func formatHeight(_ height: Float) -> String {
        return String(format: "%.2f", height) + "m"
    }
    
    
    /// Converts floating point value of weight to formatted String. Return value is rounded integer followed by units (Kg)
    /// - Parameter weight: weight as float
    /// - Returns: Formatted string with weight rounded to nearest integer, followed by unit (Kg)
    static func formatWeight(_ weight: Float) -> String {
        return "\(Int(weight.rounded()))Kg"
    }
    
    /// Calculates body mass index (BMI).
    /// - Parameters:
    ///   - height: height in meters
    ///   - weight: weight in kilograms
    /// - Returns: Body Mass Index (BMI)
    static func calculateBMI(height: Float, weight: Float) -> Float {
        return weight / powf(height, 2)
    }
}
