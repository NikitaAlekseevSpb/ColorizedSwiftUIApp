//
//  ContentView.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    @State private var textFielRedValue = "100"
    var textFieldValue: Binding<String>{
        Binding<String>(
            get: { String(format: "%.0f", Double(lround(redSliderValue))) },
            set: {
                if let value = NumberFormatter().number(from: $0) {
                    self.redSliderValue = value.doubleValue
                }
            }
        )
    }
    
    var body: some View {
        ZStack {
            Color(.systemGray)
            
                .ignoresSafeArea()
            VStack {
                Rectangle()
                    .foregroundColor(.init(
                                        red: (valueSliderColorForView(value: redSliderValue)),
                                        green: valueSliderColorForView(value: greenSliderValue),
                                        blue: valueSliderColorForView(value: blueSliderValue)))
                    .frame(height: 130)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 3))
                    .padding()
                
                
                VStack {
                    ColorSlider(
                        sliderValue: $redSliderValue,
                        colorSlider: .red,
                        textFieldValue: textFieldValue,
                        textValue: "\(lround(redSliderValue))",
                        colorText: .gray
                    )
                
                    ColorSlider(
                        sliderValue: $greenSliderValue,
                                colorSlider: .green,
                                textFieldValue: textFieldValue,
                                textValue: "\(lround(greenSliderValue))",
                                colorText: .gray
                    )
                    
                    ColorSlider(
                        sliderValue: $blueSliderValue,
                        colorSlider: .blue,
                        textFieldValue: $textFielRedValue,
                        textValue: "\(lround(blueSliderValue))",
                        colorText: .gray
                    )
                }
              
                Spacer()
            }
           
        }
        
    }
    
    private func valueSliderColorForView( value: Double) -> Double{
        return (value/2.55 )/100
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
