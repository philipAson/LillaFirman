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
            Text("Menu")
                .font(.title)
                .foregroundColor(.white)
            
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
            NavigationLink("\(Image(systemName: "list.clipboard")) Orders") {
                CustomersView()
            }
            .buttonStyle(MenuButton())
            NavigationLink("\(Image(systemName: "person")) Customers") {
                CustomersView()
            }
            .buttonStyle(MenuButton())
            NavigationLink("\(Image(systemName: "gear")) Settings") {
                CustomersView()
            }
            .buttonStyle(MenuButton())
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
