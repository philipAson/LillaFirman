//
//  Buttons.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-07-06.
//

import Foundation
import SwiftUI

struct MenuButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
            .padding(.leading)
            .frame(width: 200, height: 32, alignment: .leading)
            .foregroundColor(.white)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(16)
            .fontWeight(.semibold)
    }
}
