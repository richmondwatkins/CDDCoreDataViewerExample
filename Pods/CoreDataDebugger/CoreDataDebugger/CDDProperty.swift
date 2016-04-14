//
//  CDDProperty.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/14/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit

class CDDProperty {

    let name: String
    let size: CGSize
    
    init(name: String) {
        self.name = name
        self.size = CGSize(width: name.widthConstrainedToHeigth(40, font: UIFont.systemFontOfSize(16)) + 16, height: 40)
    }
}
