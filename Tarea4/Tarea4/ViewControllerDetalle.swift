//
//  ViewControllerDetalle.swift
//  Tarea4
//
//  Created by Pamela on 24/03/21.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    @IBOutlet weak var imagenBandera: UIImageView!
    @IBOutlet weak var labelNombre: UILabel!
    var unPais : Pais!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagenBandera.image = unPais.bandera
        
        labelNombre.text = unPais.nombre

        // Do any additional setup after loading the view.
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
