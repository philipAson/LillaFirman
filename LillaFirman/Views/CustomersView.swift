//
//  CustomersView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-07-06.
//

import SwiftUI

// !!! REMOVE LATER !!!
let number = 1...7

struct CustomersView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section() {
                        ForEach(number, id: \.self) { number in
                            Text("customer (100\(number))")
                        }
                    }
                }
            }
        }
        .navigationTitle("Customers")
        .navigationBarItems(trailing:
                                NavigationLink(destination: CreateNewCustomerView()) {
            Text(Image(systemName: "person.badge.plus"))
        })
    }
}

struct CustomersView_Previews: PreviewProvider {
    static var previews: some View {
        CustomersView()
    }
}
