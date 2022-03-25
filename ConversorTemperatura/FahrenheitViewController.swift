//
//  FahrenheitViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 22/03/22.
//

import UIKit

class FahrenheitViewController: UIViewController {
    
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tempFahrenheitTextField: UITextField!
    @IBOutlet weak var tempCelsiusLabel: UILabel!
    @IBOutlet weak var tempKelvinLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bordaTextField()
    }
    
    // MARK: - IBAction
    
    @IBAction func converterTempButton(_ sender: Any) {
        if (tempFahrenheitTextField.text == "") {
            Alerta(controller: self).exibeAlerta(titulo: "Atenção", mensagem: "Informe a temperatura!")
        } else {
            converterTemp()
            blackLabel()
        }
        
        
    }
    
    func converterTemp() {
        guard let fahrenheitString = tempFahrenheitTextField.text else { return }
        
        let fahrenheit = (fahrenheitString as NSString).doubleValue
        
        // fahrenheit para celsius
        let celsius = (fahrenheit - 32) / 1.8
        tempCelsiusLabel.text = "\(formatarDecimal(value: celsius)) ºC"
        
        // fahrenheit para kelvin
        let kelvin = (fahrenheit - 32) / 1.8 + 273
        tempKelvinLabel.text = "\(formatarDecimal(value: kelvin)) K"
    }
    // transformar o numero com duas casas apos a virgula
    func formatarDecimal(value:Double) -> String {
        let numeroFormatado = NumberFormatter()
        
        // Atribuindo com virgula, para o portugues brasil
        numeroFormatado.locale = Locale(identifier: "pt_BR")

        // adicionando as duas casas apos a vírgula
        numeroFormatado.minimumFractionDigits = 2

        numeroFormatado.numberStyle = .decimal
        
        // ira retornar o numero(string), ou um valor indefinido
        return numeroFormatado.string(from: NSNumber(value:value)) ?? "Valor indefinido"
    }
    func bordaTextField() {
        let laranja:CGColor = CGColor(red: 198.0/255.0, green: 90.0/255.0, blue: 41.0/255.0, alpha: 0.40)
        
        tempFahrenheitTextField.layer.borderWidth = 1
        tempFahrenheitTextField.layer.borderColor = laranja
        
    }
    func blackLabel() {
        tempCelsiusLabel.textColor = .black
        tempKelvinLabel.textColor = .black
    }
    
}
