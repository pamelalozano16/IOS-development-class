//
//  Coordenada.swift
//  Act_5
//
//  Created by Pamela on 12/04/21.
//

import UIKit

class Coordenada: Codable {
    var x : Int = 0
    var y : Int = 0
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func regresaCoords() -> String{
        return "(" + String(self.x) + ", " + String(self.y) + ")"
    }
}
