//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Vasquez, Juan G on 10/15/19.
//  Copyright © 2019 Vasquez, Juan G. All rights reserved.
//
import Foundation
import UIKit


class ItemsViewController: UITableViewController{
    
    var store = ItemStore()
    
    // Mark: - UITableViewDataSource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rightDetail", for: indexPath)
        cell.textLabel?.text = store.items[indexPath.row].name
        cell.detailTextLabel?.text = "\(store.items[indexPath.row].valueInDollars)"
        
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let itemToDelete = store.items[indexPath.row]
            store.removeItem(itemToDelete)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    
    
    //MARK: - IBAction's
    
    @IBAction func toggleEditingMode(_ button: UIButton) {
        if isEditing {
            // Change text of button to inform user of state
            button.setTitle("Edit", for: .normal)
            
            // Turn off editing mode
            setEditing(false, animated: true)
        } else {
            // Change text of button to inform user of state
            button.setTitle("Done", for: .normal)
            
            // Enter editing mode
            setEditing(true, animated: true)
        }
        
        
    }
    
    @IBAction func addNewItem(_ button: UIButton) {
        let itemToAdd = Item()
        store.addItem(itemToAdd)
        //Get theindex cause we cannot assume it got added at the end of the array
        if let row = store.items.firstIndex(of: itemToAdd){
            let indexPath = IndexPath(row: row, section: 0)
            tableView.insertRows(at: [indexPath] , with: .automatic)
        }
        
    }
}
