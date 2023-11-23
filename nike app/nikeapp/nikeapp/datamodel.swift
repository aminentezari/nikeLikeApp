//
//  datamodel.swift
//  nikeapp
//
//  Created by Amin Entezari on 15/11/23.
//

import SwiftUI


struct Item: Identifiable {
    var id = UUID()
    var name: String
    var type: String
    var sex: String
    var color: String
    var siz : String
    var price : Double
    
    
}
