//
//  ContentView.swift
//  Act2
//
//  Created by Pamela on 02/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderValue : Float = 0.5
    @State var pickerValue : Int = 1
    @State var toggleValue : Bool = true
    
    var body: some View {
    GeometryReader{ geo in
    VStack {
        VStack {
            Slider(value: $sliderValue)
            Text(String(sliderValue))
                .padding()
        }
        .background(Color.init(.systemTeal))
        Spacer()
        VStack {
            Picker(selection:$pickerValue, label: Text("pick")) {
                Text("Izquierda").tag(1);
                Text("Derecha").tag(2);
            }
            .pickerStyle(SegmentedPickerStyle())
            GeometryReader{
                geo in Text("🤠")
                    .font(.largeTitle)
                    .position(
                        x: pickerValue == 1 ?
                            geo.size.width*0.1
                            : geo.size.width*0.9,
                        y : geo.size.width*0.05
                    )
                    .animation(.easeIn(duration: 1))
            }
        }
        .frame(width: geo.size.width, height:geo.size.width*0.4)
        .background(Color.init(.systemIndigo))
        Spacer()
        VStack {
            Toggle(isOn: $toggleValue) {
               Text("Color de fondo")
                .foregroundColor(Color.blue)
            }
            .padding()
        }
        .background(Color.init(.lightGray))
    }
    .background(toggleValue ? Color.init(.systemGray3) : Color.black)
    }
    .animation(.easeInOut(duration: 1))
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
