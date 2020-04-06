

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        // the slider will represent Inches and the DISPLAY will show the ft and in
        let inches = Int(sender.value)
        let feet = inches / 12
        let leftover = inches % 12
        
        heightLabel.text = "\(feet)' \(leftover)\""
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value)) Lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = pow(heightSlider.value, 2)
        let weight = weightSlider.value
        let BMI = (weight / height) * 703
        let rounded = String(format: "%.1f", BMI)
        
        print(rounded)
       
        let secondVC = SecondViewController()
        // we created a blank value on the secondViewController object and we can simply add that value here
        secondVC.bmiValue = rounded
        self.present(secondVC, animated: true, completion: nil)
        
    }
    
}

