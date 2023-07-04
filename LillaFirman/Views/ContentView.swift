//
//  ContentView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-06-19.
//

import SwiftUI
import Firebase
import FirebaseCore

struct ContentView: View {
    
    var body: some View {
            
        ZStack{
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
