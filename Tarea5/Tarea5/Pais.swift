//
//  Pais.swift
//  Tarea5
//
//  Created by Pamela on 06/04/21.
//

import UIKit

class Pais: NSObject {
    var nombre: String = ""
    var codigo: String = ""
    var bandera: UIImage!
    
    init(nombre: String, codigo: String, bandera:UIImage!){
        self.nombre = nombre
        self.codigo = codigo
        self.bandera = bandera
    }
}
