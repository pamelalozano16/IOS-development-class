//
//  CalculaCuboVC.swift
//  tarea3
//
//  Created by Pamela on 08/03/21.
//

import UIKit

class CalculaCuboVC: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var areaBtn: UIButton!
    @IBOutlet weak var volBtn: UIButton!
    
    @IBOutlet weak var altura: UITextField!


    @IBOutlet weak var ancho: UITextField!
    @IBOutlet weak var largo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(ancho.text! == "" || altura.text! == "" || largo.text! == ""){
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
       
        if let anc = Double(ancho.text!),
           let lar = Double(largo.text!),
           let alt = Double(altura.text!){
       
            if(sender as! UIButton) == areaBtn{
            
                viewController.actionL = "Área de un Prisma Rectangular"
                viewController.result = "Altura: " + altura.text! + "\n"
                    + "Ancho: " + ancho.text! + "\n" + "Largo: " + largo.text! + "\n" + "Área: " + String((2*anc*lar)+(2*anc*alt)+(2*alt*lar))
            } else {
                viewController.actionL = "Volumen de un Prisma Rectangular"
                viewController.result = "Altura: " + altura.text! + "\n"
                    + "Ancho: " + ancho.text! + "\n" + "Largo: " + largo.text! + "\n" + "Volumen: " + String(anc*lar*alt)
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
