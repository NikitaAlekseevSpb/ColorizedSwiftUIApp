//
//  ColorSlider.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 07.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    let colorSlider: Color
    @Binding var textFieldValue: String
    let textValue: String
    let colorText: Color
    
    var body: some View {
        HStack {
            Text(textValue)
                .frame(width: 50, height: 30)
                .background(colorText)
                .foregroundColor(.white)
            Slider(value: $sliderValue, in: 0...255)
                .accentColor(colorSlider)
            TextField("", text: $textFieldValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50, height: 30)
            
        } .padding()
        
        
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(100), colorSlider: .green, textFieldValue: .constant("100"), textValue: "000", colorText: .blue)
    }
}
