//
//  CDDEntityTableViewCell.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/13/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit

class CDDEntityTableViewCell: UITableViewCell {

    @IBOutlet weak var entityNameLabel: UILabel!

    func configure(entity: CDDCoreDataEntity) {
        
        self.entityNameLabel.text = entity.entityName
    }
}
