//
//  ViewController2.swift
//  tarea1
//
//  Created by Pamela on 15/02/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var depth: UITextField!
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateVolume(_ sender: UIButton) {
        
        if let w = Double(width.text!),
           let h = Double(height.text!),
           let d = Double(depth.text!) {
            
            result.text = String(Int(w*h*d))
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

