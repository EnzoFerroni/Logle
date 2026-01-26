//
//  Game.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct GameView: View {
    
    @State var selectedWord = ""
    @State var words = ["adobe", "apple", "amazon", "bitcoin", "bmw", "discord","airbnb","airtable", "canva","docker","facebook", "figma", "gitlab","instagram","spotify","steam","zoom","linkedin","miro","netflix"]
    @State var guesses: [String] = []
    @State var streak: Int = 0
    @State var points: Int = 0
    @State var logoId = UUID()
    
    var body: some View {
        
        ZStack {
            Color.white
                .ignoresSafeArea(edges: .all)
            VStack {
                HStack {
                    StreakBox(streak: streak)
                    Spacer()
                    PointsBox(points: points)
                }
                
                if !selectedWord.isEmpty {
                    SVGImage(url: URL(string: "https://www.logotypes.dev/\(selectedWord)?variant=glyph&version=color")!)
                        .frame(width: 150, height: 150)
                        .padding()
                        .id(logoId) //id para forçar o recarregamenta na esolha de uma nova logo
                }
                
                VStack {
                    ForEach(0..<5, id: \.self) { index in
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
                
                Input(onSubmit: { guess in
                    guesses.append(guess)
                    
                    if guess.lowercased() == selectedWord.lowercased() {
                        streak += 1
                        addPoints()
                        nextRound()
                    }
                    else if guesses.count >= 5 {
                        streak = 0
                        points = 0
                        nextRound()
                    }
                })
                .padding(.top)
            }
        }
        .onAppear {
            selectedWord = words.randomElement() ?? "apple"
        }
    }
    
    func addPoints() {
        let attempt = guesses.count
        
        switch attempt {
        case 1:
            points += 1000
        case 2:
            points += 500
        case 3:
            points += 250
        case 4:
            points += 100
        case 5:
            points += 50
        default:
            points += 0
        }
    }
    
    func nextRound() {
        guesses = []
        selectedWord = words.randomElement() ?? "apple"
        logoId = UUID()
    }
}

#Preview {
    GameView()
}
