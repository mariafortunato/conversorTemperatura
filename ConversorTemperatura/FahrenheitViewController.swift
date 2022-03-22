//
//  FahrenheitViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 22/03/22.
//

import UIKit

class FahrenheitViewController: UIViewController {
    
    @IBOutlet weak var tempFahrenheitTextField: UITextField!
    @IBOutlet weak var tempCelsiusLabel: UILabel!
    @IBOutlet weak var tempKelvinLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func converterTempButton(_ sender: Any) {
        print("funcionando")
    }
}
