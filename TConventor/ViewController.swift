import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let tempCelc = Int(round(sender.value))
        celsiusLabel.text = "\(tempCelc)ºC"
        
        
        let tempFahr = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(tempFahr)ºF"
    }
    
    


}

