
import UIKit
import Foundation


class SecondViewController: UIViewController {
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // execute after page load
        // This shorthand is possible becuase it's already expecting a UIColor object
        view.backgroundColor = .red
        //Creating a UILable from scratch
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        // This is expecting a UIView but can recieve a UILabel because of the inheritance aspect of a View.
        view.addSubview(label)
    }
}
