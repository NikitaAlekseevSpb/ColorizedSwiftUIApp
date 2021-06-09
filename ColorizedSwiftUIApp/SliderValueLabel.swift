//
//  SliderValueLabel.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 09.06.2021.
//

import SwiftUI

struct SliderValueLabel: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 50, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueLabel(value: 100)
    }
}
