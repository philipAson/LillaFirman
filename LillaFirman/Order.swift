//
//  Order.swift
//  LillaFirman
//
//  Created by Philip Andersson on 2023-06-19.
//

import Foundation
import FirebaseFirestoreSwift

struct Order {
    
    @DocumentID var id : String?
    
//    var supplier : Supplier
    var customer : Customer
//    var articles : [Articles]
    
    var completed : Bool = false
    
    var orderNumber : String
    var name : String
    
    // Fakturadatum
    var billingDate : String = ""
    // Förfallodatum
    var dueDate : String = ""
    
    // Netto
    var netAmount : String = ""
    // Brutto
    var grossAmount : String = ""
    // Moms
    var vAT : String = ""
    
    
}
