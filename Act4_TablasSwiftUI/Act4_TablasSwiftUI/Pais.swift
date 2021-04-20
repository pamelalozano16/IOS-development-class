//
//  Pais.swift
//  Act4_TablasSwiftUI
//
//  Created by Pamela on 25/03/21.
//

import UIKit

class Pais: NSObject {
    var nombre: String = ""
    var bandera: String = ""
    
    init(nombre: String, bandera:String){
        self.nombre = nombre
        self.bandera = bandera
    }
}
