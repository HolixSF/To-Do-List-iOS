//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Luis De Castro on 7/18/16.
//  Copyright © 2016 Lu. All rights reserved.
//

import UIKit

class ChecklistItem: NSObject, NSCoding {
    
    var text = ""
    var checked: Bool
    var dueDate = NSDate()
    var shouldRemind = false
    var itemID: Int
    
    init(text: String, checked: Bool, dueDate: NSDate, shouldRemind: Bool) {
        self.text = text
        self.checked = checked
        self.shouldRemind = shouldRemind
        itemID = DataModel.nextChecklistItemID()
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
        aCoder.encodeObject(dueDate, forKey: "DueDate")
        aCoder.encodeBool(shouldRemind, forKey: "ShouldRemind")
        aCoder.encodeInteger(itemID, forKey: "ItemID")
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObjectForKey("Text") as! String
        checked = aDecoder.decodeBoolForKey("Checked")
        dueDate = aDecoder.decodeObjectForKey("DueDate") as! NSDate
        shouldRemind = aDecoder.decodeBoolForKey("ShouldRemind")
        itemID = aDecoder.decodeIntegerForKey("ItemID")
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }

}