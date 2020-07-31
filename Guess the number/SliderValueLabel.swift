//
//  SliderValueLabel.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let randomNumber: Double
    
    var body: some View {
        Text("\(lround(randomNumber))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.black)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueLabel(randomNumber: 10)
    }
}
