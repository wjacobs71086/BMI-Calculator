

import Foundation
import UIKit

struct Calculator {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let BMIValue = weight / pow(height, 2) * 703
        
        if BMIValue < 18.5 {
            bmi = BMI(value: String(format: "%.1f", BMIValue), advice: "Eat more Sweets", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if BMIValue < 24.9 {
            bmi = BMI(value: String(format: "%.1f", BMIValue), advice: "You good Fam!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: String(format: "%.1f", BMIValue), advice: "Walk it off", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return bmi?.value ?? "Default Value"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "try again"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
}
