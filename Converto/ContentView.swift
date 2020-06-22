//
//  ContentView.swift
//  Converto
//
//  Created by Jesse Russell on 22/6/20.
//  Copyright © 2020 Jesse Russell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var initialUnitNumber = ""
    
    var outputFah: Double {
        let initUnitNumber = Double(initialUnitNumber) ?? 0.0
        let converter = initUnitNumber * 9/5 + 32
        return converter
    }
    
    var outputCel: Double {
        let initUnitNumber = Double(initialUnitNumber) ?? 0.0
        let converter = initUnitNumber
        return converter
    }
    
    var outputKel: Double {
        let initUnitNumber = Double(initialUnitNumber) ?? 0.0
        let converter = initUnitNumber + 273.15
        return converter
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Input Temperature here")) {
                    TextField("0", text: $initialUnitNumber)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Output in Fahrenheit")) {
                    Text("\(outputFah)")
                }
                
                Section(header: Text("Output in Celsius")) {
                    Text("\(outputCel)")
                }
                
                Section(header: Text("Output in Kelvin")) {
                    Text("\(outputKel)")
                }
            }
            .navigationBarTitle("Converto")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
