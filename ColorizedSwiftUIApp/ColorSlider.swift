//
//  ColorSlider.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 07.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    @State var textValue = ""
    
    let colorSlider: Color
    
    var body: some View {
        HStack {
            SliderValueLabel(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(colorSlider)
                .onChange(of: sliderValue){ value in
                    textValue = "\(lround(value))"
                }
            SliderValueTF(textValue: $textValue, value: $sliderValue)
        }
       
        .onAppear {
            textValue = "\(lround(sliderValue))"
    }

}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.gray
            ColorSlider(sliderValue: .constant(100), colorSlider: .blue)
        }
    }
}
}
