//
//  ColoredSlider.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 24.01.2022.
//

import SwiftUI

struct ColoredSlider: View {
    @Binding var value: Double
    @Binding var textFieldValue: String
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 40)
            Slider(value: $value, in: 0...255)
            TextField("Value", text: $textFieldValue)
                .textFieldStyle(.roundedBorder)
                .frame(width: 60)
        }
    }
}

//struct ColoredSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        ColoredSlider(value: <#T##Binding<Double>#>, textFieldValue: <#T##Binding<String>#>)
//    }
//}
