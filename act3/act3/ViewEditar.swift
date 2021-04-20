//
//  ViewEditar.swift
//  act3
//
//  Created by Pamela on 08/03/21.
//

import SwiftUI

struct ViewEditar: View {
    
    @Binding var nombre : String
    @Binding var correo : String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nombre: ")
            TextField("Teclea tu nombre: ", text: $nombre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Correo: ")
            TextField("Teclea tu correo: ", text: $correo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }

    }
}


struct ViewEditar_Previews: PreviewProvider {
    static var previews: some View {
        ViewEditar(nombre: .constant("Donald"), correo: .constant("Disney"))
    }
}
