//
//  AddBackground.swift
//  Checklists
//
//  Created by Luis De Castro on 7/24/16.
//  Copyright © 2016 Lu. All rights reserved.
//

import UIKit

extension UIView {
    func addBackground() {
        // screen width and height:
        let width = UIScreen.mainScreen().bounds.size.width
        let height = UIScreen.mainScreen().bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
        imageViewBackground.image = UIImage(named: "Background")
        
        // you can change the content mode:
        imageViewBackground.clipsToBounds = true
        imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)
    }
}