//
//  PointsBox.swift
//  Logle
//
//  Created by Enzo Ferroni on 26/01/26.
//

import SwiftUI

struct StreakBox: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.darkBlue)
                
            VStack (alignment: .trailing) {
            Text("0")
                .font(.system(size: 24))
                .foregroundStyle(Color(.white))
            Text("acertos")
                .font(.system(size: 16))
                .foregroundStyle(Color(.white))
            }
        }
        .frame(width: 75, height: 51)
    }
}

#Preview {
    StreakBox()
}
