//
//  ContentView.swift
//  act3
//
//  Created by Pamela on 08/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var nombre : String = "Donald"
    @State var correo : String = "donald@mail.com"
    @State var mostrarFoto : Bool = false
    @State var mostrarEditar : Bool = false
    

    var body: some View {
        VStack(spacing: 0){
            ZStack {
                Color.init(Color.RGBColorSpace.sRGB, red: 121/255, green: 199/255, blue: 250/255, opacity: 1)
                VStack{
                    Button(action: {
                        mostrarFoto = true
                    }){
                    Image("donald")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    }
                    .sheet(isPresented: $mostrarFoto, content: {
                        VistaFoto(foto: Image("donald"))
                    })
                }
            }

            ZStack {
                Color.init(Color.RGBColorSpace.sRGB, red: 250/255, green: 246/255, blue: 121/255, opacity: 1)
                VStack{
                    
                    Text("Nombre: " + nombre)
                        .padding()
                    Text("Correo: " + correo)
                        .padding()
                    
                    Button(action: {
                        mostrarEditar = true
                    }){
                    Text("Editar")
                    
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .sheet(isPresented: $mostrarEditar, content: {
                        ViewEditar(nombre: $nombre, correo: $correo)
                    })

                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
