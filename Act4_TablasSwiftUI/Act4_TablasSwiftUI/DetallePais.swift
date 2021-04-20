//
//  DetallePais.swift
//  Act4_TablasSwiftUI
//
//  Created by Pamela on 25/03/21.
//

import SwiftUI

struct DetallePais: View {
    
    var nombre : String
    var bandera : String
    
    var body: some View {
        ZStack{
            Color.gray
            VStack{
                Text(nombre)
                    .font(.largeTitle)
                    .padding()
                Text(bandera)
                    .font(.system(size:100))
                    .padding()
            }
        }
    }
    
}

struct DetallePais_Previews: PreviewProvider {
    static var previews: some View {
        DetallePais(nombre: "México", bandera: "🇲🇽")
    }
}
