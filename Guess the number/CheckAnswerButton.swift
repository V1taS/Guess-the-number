//
//  CheckAnswerButton.swift
//  Guess the number
//
//  Created by Виталий Сосин on 31.07.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import SwiftUI

struct CheckAnswerButton: View {
    @Binding var value: Double
    @Binding var sliderValueLabel: Double
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action: { self.showAlert = true } ) {
            Text("Проверить ответ")
        }
        .alert(isPresented: .constant(showAlert)) {
            Alert(title: Text("Результат"),
                  message: Text("Вы заработали \(self.computeScore()) баллов"),
                  dismissButton: .cancel {
                    self.showAlert = false
                })
        }
        
    }
    
    func computeScore() -> Int {
        let difference = abs(sliderValueLabel - value)
        return Int(100 - difference)
    }
}

struct CheckAnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckAnswerButton(value: .constant(12), sliderValueLabel: .constant(15), showAlert: .constant(true))
    }
}
