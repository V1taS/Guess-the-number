//
//  ContentView.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var value: Double = 0
    @State var alphaTintColor: CGFloat
    @State private var sliderValueLabel = Double.random(in: 0...100)
    @State var showAlert = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Подвиньте слайдер, как можно ближе к:")
                SliderValueLabel(randomNumber: sliderValueLabel)
            }
            BoxSlider(value: $value, alphaTintColor: $alphaTintColor)
            CheckAnswerButton(value: $value, sliderValueLabel: $sliderValueLabel, showAlert: $showAlert)
            CancelButton(value: $value, sliderValueLabel: $sliderValueLabel)
        } .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(sliderValueLabel - value)
        return Int(100 - difference)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 10.5, alphaTintColor: 1)
    }
}
