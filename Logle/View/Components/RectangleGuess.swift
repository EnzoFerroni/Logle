//
//  RectangleGuess.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct RectangleGuess: View {
    var body: some View {
        HStack{
            HStack {
                Rectangle()
                    .frame(width: 10, height: 47)
                    .foregroundStyle(.darkBlue)
                SVGImage(url: URL(string: "https://www.logotypes.dev/random?variant=glyph")!)
                    .frame(width: 30, height: 25)
                Text("Nome da Logo")
                Spacer()
            }
            .frame(width: 287, height: 47)
            .border(Color.gray, width: 1)
            Right()
        }
    }
}

#Preview {
    RectangleGuess()
}
