//
//  ContentView.swift
//  Act4_TablasSwiftUI
//
//  Created by Pamela on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    
    var listaPaises = [
        Pais(nombre: "México", bandera:"🇲🇽"),
        Pais(nombre: "Japon", bandera: "🇯🇵"),
        Pais(nombre: "Corea del sur", bandera:"🇰🇷"),
        Pais(nombre: "India", bandera: "🇮🇳"),
        Pais(nombre: "Canada", bandera: "🇨🇦"),
        Pais(nombre: "Estados Unidos", bandera: "🇺🇸")
    ]
    
    var body: some View {
        NavigationView{
            List {
                ForEach (listaPaises, id:\.self){ pais in
                    
                    NavigationLink(
                        destination: DetallePais(nombre: pais.nombre, bandera: pais.bandera),
                        label: {
                            celdaPais(nombre: pais.nombre, bandera: pais.bandera)
                        })
                }
            }
            .navigationTitle("Deportes")
            .font(.largeTitle)
        }
    }
}

struct celdaPais : View {
    var nombre : String
    var bandera : String
    
    var body: some View {
        HStack {
            Text(bandera)
                .font(.system(size:80))
            Spacer()
            Text(nombre)
                .font(.title)
                .padding()
            
        }
        .background(Color.gray)
        .cornerRadius(10)
        .padding(10)
        .foregroundColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
