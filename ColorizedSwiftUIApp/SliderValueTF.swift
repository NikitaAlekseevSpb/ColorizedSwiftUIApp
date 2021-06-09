//
//  SliderValueTF.swift
//  ColorizedSwiftUIApp
//
//  Created by MacBook on 09.06.2021.
//

import SwiftUI

struct SliderValueTF: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: chekValue)
            .frame(width: 55)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert){
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
    }
}

extension SliderValueTF {
    
    private func chekValue(){
        if let value = Int(textValue), (0...255).contains(value){
            self.value = Double(value)
            return
        }
        value = 0
        textValue = "0"
        showAlert.toggle()
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueTF(textValue: .constant("100"), value: .constant(100))
    }
}

