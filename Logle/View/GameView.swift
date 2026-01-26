//
//  Game.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct GameView: View {
    
    @State var selectedWord = ""
    @State var words = ["apple", "amazon", "bitcoin", "bmw", "discord"]
    @State var guesses: [String] = []
    
    @State var streak: Int
    
    var body: some View {

        ZStack {
            Color.white
                .ignoresSafeArea(edges: .all)
            VStack {
                HStack {
                    StreakBox()
                    Spacer()
                    PointsBox()
                }
                
                if !selectedWord.isEmpty {
                    SVGImage(url: URL(string: "https://www.logotypes.dev/\(selectedWord)?variant=glyph&version=color")!)
                        .frame(width: 150, height: 150)
                        .padding()
                }
                
                VStack {
                    ForEach(0..<5) { index in
                        if index < guesses.count {
                            RectangleGuess(
                                guess: guesses[index],
                                isCorrect: guesses[index].lowercased() == selectedWord.lowercased()
                            )
                        }
                        else {
                            RectangleGuess(guess: "", isCorrect: false)
                        }
                    }
                }

                if guesses.count >= 5 {
                    Text("Fim de jogo")
                        .font(.title)
                        .foregroundStyle(.red)
                        .padding(.top)
                }
                else {
                    Input(onSubmit: { guess in
                        guesses.append(guess)
                        if guess.lowercased() == selectedWord.lowercased() {
                            streak += 1
                        }
                    })
                    .padding(.top)
                }

            }
        }
        .onAppear {
            selectedWord = words.randomElement() ?? "apple"
        }
    }
}

#Preview {
    GameView(streak: 0)
}
