//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Luis De Castro on 7/19/16.
//  Copyright © 2016 Lu. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }
}