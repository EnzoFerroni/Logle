//
//  Game.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct Game: View {
    var body: some View {
        ZStack {
            Color.offWhite
                .ignoresSafeArea(edges: .all)
            VStack {
                HStack {
                    StreakBox()
                    Spacer()
                    PointsBox()
                }
                SVGImage(url: URL(string: "https://www.logotypes.dev/random?variant=glyph")!)
                    .frame(width: 150, height: 150)
                    .padding()
                VStack{
                    RectangleGuess()
                    RectangleGuess()
                    RectangleGuess()
                    RectangleGuess()
                    RectangleGuess()
                }
                Input()
                    .padding(.top )
                
            }
        }
        
    }

}

#Preview {
    Game()
}
