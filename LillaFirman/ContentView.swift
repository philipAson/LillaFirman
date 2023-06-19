//
//  ContentView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-06-19.
//

import SwiftUI
import Firebase
struct ContentView: View {
    
    let db = Firestore.firestore()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }.onAppear() {
//            db.collection("test").addDocument(data: ["init": "up and running"])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
