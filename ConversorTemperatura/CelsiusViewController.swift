//
//  CelsiusViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 19/03/22.
//

import UIKit

class CelsiusViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    
    @IBOutlet weak var tempCelsiusTextField: UITextField!
    @IBOutlet weak var tempFahrenheitLabel: UILabel!
    @IBOutlet weak var tempKelvinLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - IBAction
    
    @IBAction func calcularTempButton(_ sender: Any) {
        guard let celsiusString = tempCelsiusTextField.text else { return }
        
        let celsius = (celsiusString as NSString).floatValue
        
        // celsius para fahrenheit
        let fahrenheit = 1.8 * celsius + 32
        tempFahrenheitLabel.text = "\(fahrenheit)"
        
        // celsius para kelvin
        let kelvin = celsius + 273.15
        tempKelvinLabel.text = "\(kelvin)"
    }
}
