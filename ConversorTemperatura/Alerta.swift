//
//  Alerta.swift
//  ConversorTemperatura
//
//  Created by Maria Alice Rodrigues Fortunato on 22/03/22.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibeAlerta(titulo: String, mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}
