//
//  AMACoreDataEntiry.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/13/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit
import CoreData

class CDDCoreDataEntity {

    let entityName: String
    let properties: [CDDProperty]
    let fetchResults: NSArray
    
    init(entityName: String, properties: [String], moc: NSManagedObjectContext) {
        self.entityName = entityName
        self.properties = properties.map({ (propertyString) -> CDDProperty in
            return CDDProperty(name: propertyString)
        })
        
        let fetchRequest: NSFetchRequest = NSFetchRequest(entityName: entityName)
        
        self.fetchResults = try! moc.executeFetchRequest(fetchRequest)
    }
}
