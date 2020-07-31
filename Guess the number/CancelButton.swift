//
//  CancelButton.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct CancelButton: View {
    @Binding var value: Double
    @Binding var sliderValueLabel: Double
    
    var body: some View {
        Button(action: {
            self.value = 0
            self.sliderValueLabel = Double.random(in: 0...100)
        }) {
            Text("Начать заново!")
        }
    }
}

struct CancelButton_Previews: PreviewProvider {
    static var previews: some View {
        CancelButton(value: .constant(14), sliderValueLabel: .constant(2))
    }
}
