//
//  CDDPropertyCollectionViewCell.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/13/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit

class CDDPropertyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var propertyNameLabel: UILabel!
    
    func configure(property: CDDProperty) {
        
        self.propertyNameLabel.text = property.name
    }
}
