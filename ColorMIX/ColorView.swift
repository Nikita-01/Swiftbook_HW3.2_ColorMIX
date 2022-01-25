//
//  ColorView.swift
//  ColorMIX
//
//  Created by Никита Рыжкин on 25.01.2022.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255)
            .frame(height: 200)
            .cornerRadius(20)
            .overlay(
            RoundedRectangle(cornerRadius: 20,
                             style: .continuous)
                            .stroke(Color.blue, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 10, green: 110, blue: 210)
    }
}
