//
//  Item.swift
//  Homepwner
//
//  Created by Fernando Serrano on 10/26/19.
//  Copyright © 2019 FIU. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, valueInDollars: Int, serialNumber: String?){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        super.init()
    }
    convenience init(random: Bool = false) {
        if random {
            let adjetives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var n = arc4random_uniform(UInt32(adjetives.count))
            let adjetive = adjetives[Int(n)]
            
            n = arc4random_uniform(UInt32(nouns.count))
            let noun = nouns[Int(n)]
            
            let name = "\(adjetive) \(noun)"
            let value = Int(arc4random_uniform(100))
            let serialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: name, valueInDollars: value, serialNumber: serialNumber)
        } else {
            self.init(name: "", valueInDollars: 0, serialNumber: nil)
        }
    }
}
