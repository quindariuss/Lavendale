//
//  FHIR.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 5/11/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import Foundation

struct root: Codable  {
    var resourceType: String
    var total: Int
    var type: String
    var link: [Link]
    var entry: [Entry]
    
    struct Entry: Codable {
        var fullUrl: String
        var resource: Resource
    }
    struct Resource: Codable {
        var name: [Name]
        var address: [Address]
    }
    
    struct Link : Codable {
        var   relation: String
        var   url: String
    }
    
    
    struct Name: Codable {
        var family: String
        var given: [String]
    }
    
    
    struct Address: Codable {
        var city: String
        var country: String
        var `extension`: [Extension]
    }
    struct Extension: Codable {
        var `extension`: [`extension`]
    }
    
    struct `extension`: Codable {
        var valueDecimal : Double
    }
    
}
