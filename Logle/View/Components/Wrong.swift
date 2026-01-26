//
//  Wrong.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct Wrong: View {
    var body: some View {
        ZStack {
            Color.red
                
            Text("X")
                .font(.system(size: 17) .bold())
                .foregroundColor(.white)
        }
        .frame(maxWidth: 47, maxHeight: 47)
    }
}

#Preview {
    Wrong()
}
