//
//  WorkLogView.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-07-04.
//

import SwiftUI

struct WorkLogView: View {
    
    @State var date = Date()
    
    var body: some View {
        VStack{
            DatePicker("date", selection: $date)
                .padding()
        }
    }
}

struct WorkLogView_Previews: PreviewProvider {
    static var previews: some View {
        WorkLogView()
    }
}
