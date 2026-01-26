//
//  ContentView.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            SVGImage(url: URL(string: "https://www.logotypes.dev/random?variant=glyph")!)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
