//
//  CalculaEsferaVC.swift
//  tarea3
//
//  Created by Pamela on 08/03/21.
//

import UIKit

class CalculaEsferaVC: UIViewController {

    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var areaBtn: UIButton!
    @IBOutlet weak var volBtn: UIButton!
    @IBOutlet weak var radio: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(radio.text! == ""){
            let alerta = UIAlertController(title: "Error", message: "Los campos deben ser valores númericos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion:nil)
            return false;
        }
            return true;
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let viewController = segue.destination as! ViewController
        
        if let ratio = Double(radio.text!){
       
            if(sender as! UIButton) == areaBtn{
                
                viewController.actionL = "Área de una Esfera"
            

                viewController.result = "Radio: " + radio.text! + "\n"
                    + "Área: " + String(4*(3.1416)*ratio*ratio)
            } else {
                viewController.actionL = "Volumen de una Esfera"
                viewController.result = "Radio: " + radio.text! + "\n"
                    + "Volumen: " + String((4/3)*(3.1416)*ratio*ratio*ratio)
            }
            

        }
        viewController.img = img.image!
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
