//
//  ContentView.swift
//  Tarea2SwiftUI
//
//  Created by Pamela on 22/02/21.
//  A01176970

import SwiftUI

struct ContentView: View {
    
    @State var height : String = ""
    @State var weight : String = ""
    @State var resultado : String = "Resultado"
    @State var alertaVisible : Bool = false
    
    
    var body: some View {
        VStack {
                    Text("Calcular IMC")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundColor(Color.purple)
                        .padding(.top, 100)
            HStack{
                Text("Altura")
                    .padding(.leading, 20.0)
                TextField("Altura en metros", text: $height)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .keyboardType(.decimalPad)
                        .onTapGesture {
                            
                    }
            }
            HStack {
                Text("Peso")
                    .padding(.leading, 30.0)
                    TextField("Peso en kgs", text: $weight)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .keyboardType(.decimalPad)
                        .onTapGesture {
                            
                        }
            }
                Spacer()
                Button(action: {
                    if let w = Double(weight),
                    let h = Double(height){
                    resultado = String(Int(w/(h*h)));
                    } else {
                        resultado = "Error";
                        alertaVisible = true;
                    }
                    
                    
                }) {
                    Text("Calcular")
                        .foregroundColor(Color.white)
                }
                .alert(isPresented: $alertaVisible, content: {
                    Alert(title: Text("Error"), message: Text("Los campos deben contener datos numericos"), dismissButton: .default(Text("OK")))
                })
                .padding()
                .background(Color.purple)
            Spacer()
            Text(resultado)
                .padding()
                .font(.headline)
            Image("unnamed")
                .resizable()
                .padding(.all, 30)
        }
        .background(Color.init(.systemGray3))
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            UIApplication.shared.endEditing();
        }

    }
}

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (2nd generation)")
    }
}
