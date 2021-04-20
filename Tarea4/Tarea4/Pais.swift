//
//  Pais.swift
//  Tarea4
//
//  Created by Pamela on 24/03/21.
//

import UIKit

class Pais: NSObject {
    var nombre: String = ""
    var bandera: UIImage!
    
    init(nombre: String, bandera:UIImage!){
        self.nombre = nombre
        self.bandera = bandera
    }
}
