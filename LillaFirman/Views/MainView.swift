//
//  MainView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-07-04.
//

import SwiftUI
import Firebase

struct MainView: View {
    
    let db = Firestore.firestore()
    
    // !!! remove later !!!
    let number = 1...7
    
    @State var choosenDate = Date()
    
    @State private var showMenu: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        Section(header: Text("Active orders")) {
                            ForEach(number, id: \.self) { number in
                                Text("order \(number)")
                            }
                        }
                    }
                }
                
                GeometryReader { _ in
                    HStack{
                        Spacer()
                        SideMenuView()
                            .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                            .animation(.easeIn(duration: 0.4), value: showMenu)
                    }
                }
                .background(Color.black.opacity(showMenu ? 0.4 : 0))
                .animation(.easeIn(duration: 0.4), value: showMenu)
                
                
                .navigationTitle("Lilla firman")
                .toolbar {
                    
                    Button {
                        showMenu.toggle()
                    } label: {
                        if showMenu {
                            Image(systemName: "xmark")
                        } else {
                            Image(systemName: "text.justify")
                                
                        }
                        
                    }
                    
                }
    //            DatePicker(
    //                selection: $choosenDate, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
    //            .datePickerStyle(.graphical)
                
                
                .onAppear() {
        //            db.collection("test").addDocument(data: ["init": "up and running"])
            }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
