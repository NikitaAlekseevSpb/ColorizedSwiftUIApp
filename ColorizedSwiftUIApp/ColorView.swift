//
//  ColorView.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 09.06.2021.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255)
            
            .cornerRadius(20.0)
            .overlay(
            RoundedRectangle(cornerRadius: 20.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                    .stroke(Color(.white), lineWidth: 4))

        .frame(height: 130)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
