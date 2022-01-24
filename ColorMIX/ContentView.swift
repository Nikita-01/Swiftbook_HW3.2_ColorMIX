//
//  ContentView.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    @State private var redTF = ""
    @State private var greenTF = ""
    @State private var blueTF = ""
    
    @State private var alertPresented = false

    
    var body: some View {
        VStack {
            Color(.displayP3,
                  red: Double(lround(redValue)),
                  green: Double(lround(greenValue)),
                  blue: Double(lround(blueValue)))
                .frame(height: 200)
                .cornerRadius(20)
            ColoredSlider(value: $redValue, textFieldValue: $redTF)
            ColoredSlider(value: $greenValue, textFieldValue: $greenTF)
            ColoredSlider(value: $blueValue, textFieldValue: $blueTF)
            Button("Done", action: {})
            Spacer()
        }
        .padding()
    }
    
//    private func checkValue() {
//        guard let _ = Double(redTF) else { return }
//        guard let _ = Double(greenTF) else { return }
//        guard let _ = Double(blueTF) else { return }
//
//        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
