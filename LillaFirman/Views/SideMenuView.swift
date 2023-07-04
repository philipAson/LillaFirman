//
//  SideMenuView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-07-04.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            Text("vill me ha en bira")
                .font(.title)
                .foregroundColor(.white)
            
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
            Link(destination: URL(string: "https://falcon.se/produkter/specialbrew#")!) {
                Text("pippi")
            }
            Spacer()
        }
        .padding(16)
        .background(Color.black.opacity(0.6))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
