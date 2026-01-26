//
//  Input.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct Input: View {
    
    @State private var guess = ""
    var onSubmit: (String) -> Void
    
    var body: some View {
        HStack {
            TextField("", text: $guess)
                .frame(height: 47)
                .border(Color.gray)
                .onSubmit {
                    submitGuess()
                }
            Button(action: {
                submitGuess()
            }) {
                ZStack {
                    Rectangle()
                        .foregroundStyle(.darkBlue)
                        .frame(width: 47, height: 47)
                    Image(systemName: "return")
                        .foregroundStyle(Color.white)
                }
            }
        }
        .frame(width: 353, height: 47)
    }
    
    private func submitGuess() {
        guard !guess.isEmpty else { return }
        onSubmit(guess)
        guess = ""
    }
}

#Preview {
    Input(onSubmit: { guess in
        print("Guessed: \(guess)")
    })
}
