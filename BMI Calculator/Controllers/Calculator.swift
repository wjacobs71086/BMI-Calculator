

import Foundation


struct Calculator {
    var BMIValue = "0"
    
    mutating func calculateBMI(height: Float, weight: Float) {
        BMIValue = String(format: "%.2f", (weight / pow(height, 2) * 703))
    }
    
    func getBMIValue() -> String {
        return BMIValue
    }
}


//let height = pow(heightSlider.value, 2)
//let weight = weightSlider.value
//let BMI = (weight / height) * 703
//rounded = String(format: "%.2f", BMI)
