//
//  ViewController.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 19/03/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func entrarButton(_ sender: Any) {
        
        performSegue(withIdentifier: "loginToCalculos", sender: self)
    }
    
}
