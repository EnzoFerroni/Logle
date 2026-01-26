//
//  SVGImage.swift
//  SVGImage
//
//  Created by Diego Saragoza Da Silva on 26/01/26.
//

import SwiftUI
import UIKit

struct SVGImage: View {
    public var url: URL
    
    @State private var svgModel: SVGModel = SVGModel()
    
    var body: some View {
        Group {
            if let image = svgModel.image {
                Image(uiImage: image)
                    .resizable()
            }
            else {
                ProgressView()
                    .onAppear {
                        svgModel.fetch(from: url)
                    }
            }
        }
    }
}
