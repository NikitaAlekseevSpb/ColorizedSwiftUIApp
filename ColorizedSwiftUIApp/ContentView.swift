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
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.3765624762, blue: 0.7304599881, alpha: 1))
                .ignoresSafeArea()
            
            VStack(spacing: 40)  {
                ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                
                VStack{
                    ColorSlider(sliderValue: $redSliderValue, colorSlider: .red)
                    ColorSlider(sliderValue: $greenSliderValue, colorSlider: .green)
                    ColorSlider(sliderValue: $blueSliderValue, colorSlider: .blue)
                }
                Spacer()
            }
            .padding()
           
        }
        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
