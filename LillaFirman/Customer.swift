//
//  Customer.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-06-19.
//

import Foundation
import FirebaseFirestoreSwift

struct Customer {
    // document id
    @DocumentID var id : String?
    
    var customerNumber : String
    var name : String
    var adress : String
    var city : String
    var postal : String
    var email : String
    var phone : String
    var orgNumber : String = ""
}
