//
//  RectangleGuess.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct RectangleGuess: View {
    
    var guess: String
    var isCorrect: Bool
    
    var body: some View {
        HStack {
            HStack {
                Rectangle()
                    .frame(width: 10, height: 47)
                    .foregroundStyle(.darkBlue)
                
                if !guess.isEmpty {
                    SVGImage(url: URL(string: "https://www.logotypes.dev/\(guess)?variant=glyph")!)
                        .frame(width: 30, height: 25)
                    Text(guess.capitalized)
                }
                else {
                    Text("")
                }
                
                Spacer()
            }
            .frame(width: 287, height: 47)
            .border(Color.gray, width: 1)
            
            if !guess.isEmpty {
                if isCorrect {
                    Right()
                }
                else {
                    Wrong()
                }
            }
            else {
                Rectangle()
                    .frame(width: 47, height: 47)
                    .foregroundStyle(.clear)
            }
        }
    }
}

#Preview {
    VStack {
        RectangleGuess(guess: "apple", isCorrect: true)
        RectangleGuess(guess: "amazon", isCorrect: false)
        RectangleGuess(guess: "", isCorrect: false)
    }
}
