//
//  GameViewModel.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI
import Combine

class GameViewModel: ObservableObject {
    
    @Published var selectedWord = ""
    @Published var guesses: [String] = []
    @Published var streak: Int = 0
    @Published var points: Int = 0
    
    let words = ["apple", "amazon", "bitcoin", "bmw", "discord"]
    
    init() {
        selectNewWord()
    }
    
    func submitGuess(_ guess: String) {
        guesses.append(guess)
        
        if guess.lowercased() == selectedWord.lowercased() {
            streak += 1
            addPoints()
            nextRound()
        }
        else if guesses.count >= 5 {
            nextRound()
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
        selectNewWord()
    }
    
    func selectNewWord() {
        selectedWord = words.randomElement() ?? "apple"
    }
}
