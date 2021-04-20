//
//  ViewControllerConfig.swift
//  Act_5
//
//  Created by Pamela on 12/04/21.
//

import UIKit

class ViewControllerConfig: ViewController {

    @IBOutlet weak var switchFondo: UISwitch!
    @IBOutlet weak var scTamano: UISegmentedControl!
    @IBOutlet weak var tlUsuario: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        actualizaInterfaz()
        // Do any additional setup after loading the view.
    }
    
   // MARK: - Métodos para guardar y actualizar datos
    
    @IBAction func guardarDatosInterfaz() {
        let defaults = UserDefaults.standard
        
        defaults.setValue(switchFondo.isOn, forKey: "fondo")
        defaults.setValue(scTamano.selectedSegmentIndex, forKey: "tamaño")
        if let usuario = tlUsuario.text {
            defaults.setValue(usuario, forKey: "usuario")
        }
    }
    
    func actualizaInterfaz() {
        let defaults = UserDefaults.standard
        
        if let usuario = defaults.value(forKey: "usuario") as? String {
            tlUsuario.text = usuario
        }
        
        if defaults.value(forKey: "tamaño") != nil {
            scTamano.selectedSegmentIndex = defaults.integer(forKey: "tamaño")
            
        }
        
        if defaults.value(forKey: "fondo") != nil {
            switchFondo.isOn = defaults.bool(forKey: "fondo")
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        guardarDatosInterfaz()
        let vistaIni = presentingViewController as! ViewController
        vistaIni.agregarConfiguracion()
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
