//
//  ViewController.swift
//  Tarea5
//
//  Created by Pamela on 06/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    var unPais : Pais!
    @IBOutlet weak var lbCodigo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detalle País"
        imgFoto.image = unPais.bandera
        lbNombre.text = unPais.nombre
        lbCodigo.text = unPais.codigo
    }


}

