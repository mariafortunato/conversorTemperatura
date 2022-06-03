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
        
        bordaTextField()
    }
    
    // MARK: - IBAction
    
    @IBAction func converterTempButton(_ sender: Any) {
        
        if (tempCelsiusTextField.text == "") {
            Alerta(controller: self).exibeAlerta(titulo: "Atenção", mensagem: "Informe a temperatura!")
        } else {
            converterTemp()
            blackLabel()
        }
        
        
    }
    
    func converterTemp() {
        guard let celsiusString = tempCelsiusTextField.text else { return }
        
        let celsius = (celsiusString as NSString).doubleValue
        
        // celsius para fahrenheit
        let fahrenheit = 1.8 * celsius + 32.0
        tempFahrenheitLabel.text = "\(formatarDecimal(value: fahrenheit)) ºF"
        
        // celsius para kelvin
        let kelvin = celsius + 273.0 // ou 273.15, depende do site
        tempKelvinLabel.text = "\(formatarDecimal(value: kelvin)) K"
    }
    func formatarDecimal(value:Double) -> String {
        let numeroFormatado = NumberFormatter()
        
        numeroFormatado.locale = Locale(identifier: "pt_BR")

        numeroFormatado.minimumFractionDigits = 2

        numeroFormatado.numberStyle = .decimal
        
        return numeroFormatado.string(from: NSNumber(value:value)) ?? "Valor indefinido"
    }
    func bordaTextField() {
        let laranja:CGColor = CGColor(red: 198.0/255.0, green: 90.0/255.0, blue: 41.0/255.0, alpha: 0.40)
        
        tempCelsiusTextField.layer.borderWidth = 1
        tempCelsiusTextField.layer.borderColor = laranja
        
    }
    func blackLabel() {
        tempKelvinLabel.textColor = .black
        tempFahrenheitLabel.textColor = .black
    }
}
