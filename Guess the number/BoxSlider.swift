//
//  BoxSlider.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct BoxSlider: View {
    @Binding var value: Double
    @Binding var alphaTintColor: CGFloat
    
    var body: some View {
        HStack {
            Text("0")
            UIKitSlider(value: $value, alphaTintColor: $alphaTintColor)
            Text("100")
        }
    }
}

struct BoxSlider_Previews: PreviewProvider {
    static var previews: some View {
        BoxSlider(value: .constant(30), alphaTintColor: .constant(1))
    }
}
