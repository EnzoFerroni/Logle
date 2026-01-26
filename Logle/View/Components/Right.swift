//
//  Right.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct Right: View {
    var body: some View {
        ZStack {
            Color.green
            Image(systemName: "checkmark")
                .foregroundStyle(Color.white)
        }
        .frame(maxWidth: 47, maxHeight: 47)
    }
}

#Preview {
    Right()
}
