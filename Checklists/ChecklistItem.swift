//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Luis De Castro on 7/18/16.
//  Copyright © 2016 Lu. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
}