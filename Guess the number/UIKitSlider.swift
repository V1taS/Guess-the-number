//
//  UISlider.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct UIKitSlider: UIViewRepresentable {
    
    @Binding var value: Double
    @Binding var alphaTintColor: CGFloat
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.maximumValue = 0
        slider.maximumValue = 100
        slider.thumbTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        slider.minimumTrackTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        slider.alpha = alphaTintColor
        slider.value = Float(value)
        
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged),
                         for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
    }
    
    func makeCoordinator() -> UIKitSlider.Coordinator {
        Coordinator(value: $value)
    }
    
}

extension UIKitSlider {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct UIKitSlider_Previews: PreviewProvider {
    static var previews: some View {
        UIKitSlider(value: .constant(50), alphaTintColor: .constant(0.5))
    }
}
