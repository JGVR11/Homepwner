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
        items.sort { (leftItem, rightItem) -> Bool in
            return leftItem.name < rightItem.name
        }
    }
    
    
    func addItem(_ item: Item){
        items.append(item)
        sortedItems()
    }
    
    
    
    func removeItem(_ item: Item){
        if let index = items.firstIndex(of: item ){
            items.remove(at: index)
            
        }
        sortedItems()
        
    }
    
    func sortedItems(){
        items.sort { (leftItem, rightItem) -> Bool in
            return leftItem.name < rightItem.name
        }
    }
}
