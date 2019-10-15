//
//  Item.swift
//  Homepwner
//
//  Created by Vasquez, Juan G on 10/15/19.
//  Copyright © 2019 Vasquez, Juan G. All rights reserved.
//

import Foundation

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        super.init()
    }
    
    convenience init(random: Bool = true) {
        let names = ["Eric", "Michael", "Jarod", "Logan", "Drew", "Juan", "Sam", "Cody"]
        let adjectives = ["Awesome", "Strong", "Skinny", "Svelte", "Determined"]
        
        let randomNameIndex = Int.random(in: 0..<names.count)
        let randomAdjectiveIndex = Int.random(in: 0..<adjectives.count)
        
        let randomName = names[randomNameIndex]
        let randomAdjective = adjectives[randomAdjectiveIndex]
        
        let name = "\(randomAdjective) \(randomName)"
        
        let randomValue = Int.random(in: 0...100)
        
        let randomSerialNumber = "\(Int.random(in: 0..<10000))"
        
        self.init(name: name, serialNumber: randomSerialNumber, valueInDollars: randomValue)
    }
    
    
}
