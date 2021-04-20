//
//  ViewController3.swift
//  tarea1
//
//  Created by Pamela on 15/02/21.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateIMC(_ sender: UIButton) {
        
        if let w = Double(weight.text!),
           let h = Double(height.text!) {
            
            result.text = String(Int(w/(h*h)))
        } else {
            result.text = "Error"
            let alerta = UIAlertController(title: "Error", message: "Los campos deben ser valores númericos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion:nil)
            
            
        }
        
        view.endEditing(true)
    }
    
    @IBAction func quitarKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
}
