//
//  ItemStore.swift
//  Homepwner
//
//  Created by Fernando Serrano on 10/26/19.
//  Copyright © 2019 FIU. All rights reserved.
//

import UIKit

class ItemStore {
    var itemCollection = [Item]()
    
    @discardableResult func createItem() -> Item {
        let item = Item(random: true)
        itemCollection.append(item)
        return item
    }
}
