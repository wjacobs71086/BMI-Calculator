

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculator = Calculator()
    var rounded: String?
    
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
        
        calculator.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            // because we are overriding the class and including a special version of prepare. This is "Downcasting" changing the class from UI ViewController to ResultViewController
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculator.getBMIValue()
            destinationVC.advice = calculator.getAdvice()
            destinationVC.color = calculator.getColor()
        }
    }
    
}

