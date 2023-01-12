//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by DONIYORBEK IBROKHIMOV on 12/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight: Float) {
        let bmiValue = Float(weight) / Float(pow(height, 2))
        
        let color: UIColor
        let advice: String
        
        if bmiValue < 18.5{
            color = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            advice = "Eat more pies"
        }
        else if bmiValue < 24.9 {
            color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            advice = "Fit as a fiddle!"
        }
        else {
            color = #colorLiteral(red: 0.9098039216, green: 0.3176470588, blue: 0.4784313725, alpha: 1)
            advice = "Eat less pies!"
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .systemRed
    }
}
