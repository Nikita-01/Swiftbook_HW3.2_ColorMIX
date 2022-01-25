//
//  ContentView.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 10.0
    @State private var greenValue = 110.0
    @State private var blueValue = 210.0
    
    @State private var redTF = "10"
    @State private var greenTF = "110"
    @State private var blueTF = "210"

    var body: some View {
        VStack {
            ColorView(red: redValue,
                      green: greenValue,
                      blue: blueValue)
            ColoredSliderView(value: $redValue, valueTF: $redTF, color: .red)
            ColoredSliderView(value: $greenValue, valueTF: $greenTF, color: .green)
            ColoredSliderView(value: $blueValue, valueTF: $blueTF, color: .blue)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
