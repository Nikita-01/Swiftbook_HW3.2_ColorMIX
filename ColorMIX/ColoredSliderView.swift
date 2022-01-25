//
//  ColoredSlider.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 24.01.2022.
//

import SwiftUI

struct ColoredSliderView: View {
    @Binding var value: Double
    @Binding var valueTF: String
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(color)
                .frame(width: 40)
            Slider(value: $value, in: 0...255) {_ in
                valueTF = String(lround(value))
            }
                .accentColor(color)
            TextField("Value", text: $valueTF) {
                value = Double(valueTF) ?? value
            }
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
        }
    }
}

struct ColoredSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredSliderView(value: .constant(7), valueTF: .constant("7"), color: .red)
    }
}
