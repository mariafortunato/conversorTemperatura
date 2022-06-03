//
//  KelvinViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 22/03/22.
//

import UIKit

class KelvinViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tempKelvinTextField: UITextField!
    @IBOutlet weak var tempFahrenheitLabel: UILabel!
    @IBOutlet weak var tempCelsiusLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bordaTextField()
    }
    
    // MARK: - IBAction
    
    @IBAction func converterTempButton(_ sender: Any) {
        if (tempKelvinTextField.text == "") {
            Alerta(controller: self).exibeAlerta(titulo: "Atenção", mensagem: "Informe a temperatura!")
        } else {
            converterTemp()
            blackLabel()
        }
        
        
    }
    
    func converterTemp() {
        guard let kelvinString = tempKelvinTextField.text else { return }
        
        let kelvin = (kelvinString as NSString).doubleValue
        
        // fahrenheit para celsius
        let fahrenheit = (kelvin - 273.0) * 1.8 + 32.0
        tempFahrenheitLabel.text = "\(formatarDecimal(value: fahrenheit)) ºF"
        
        // fahrenheit para kelvin
        let celsius = kelvin - 273.0
        tempCelsiusLabel.text = "\(formatarDecimal(value: celsius)) ºC"
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
        
        tempKelvinTextField.layer.borderWidth = 1
        tempKelvinTextField.layer.borderColor = laranja
        
    }
    func blackLabel() {
        tempCelsiusLabel.textColor = .black
        tempFahrenheitLabel.textColor = .black
    }
}

