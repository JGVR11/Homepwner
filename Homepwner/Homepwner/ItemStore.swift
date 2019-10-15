//
//  ItemStore.swift
//  Homepwner
//
//  Created by Vasquez, Juan G on 10/15/19.
//  Copyright © 2019 Vasquez, Juan G. All rights reserved.
//

import Foundation

class ItemStore{
    
    var items = [Item]()
    
    init(){
        for _ in 0..<10{
            items.append(Item())
        }
    }
    
    
}
