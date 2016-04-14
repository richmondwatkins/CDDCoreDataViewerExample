//
//  CDDTableEntitySource.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/13/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit

protocol CDDTableEntitySourceDelegate {
    func didSelectEntitiy(entity: CDDCoreDataEntity, atIndexPath indexPath: NSIndexPath)
}

class CDDTableEntitySource: NSObject, UITableViewDelegate, UITableViewDataSource {

    var entities: [CDDCoreDataEntity] = []
    var delegate: CDDTableEntitySourceDelegate?
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: CDDEntityTableViewCell = tableView.dequeueReusableCellWithIdentifier("CDDEntityTableViewCell") as! CDDEntityTableViewCell
        
        cell.configure(entities[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.delegate?.didSelectEntitiy(self.entities[indexPath.row], atIndexPath: indexPath)
    }
}
