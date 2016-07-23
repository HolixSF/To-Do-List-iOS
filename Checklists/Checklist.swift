//
//  Checklist.swift
//  Checklists
//
//  Created by Luis De Castro on 7/22/16.
//  Copyright © 2016 Lu. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
