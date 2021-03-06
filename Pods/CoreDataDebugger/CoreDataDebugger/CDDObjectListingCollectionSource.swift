//
//  CDDCollectionSource.swift
//  AMAUtils
//
//  Created by Watkins, Richmond on 4/13/16.
//  Copyright © 2016 Asurion. All rights reserved.
//

import UIKit
import CoreData

class CDDObjectListingCollectionSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var entity: CDDCoreDataEntity?

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let entity = self.entity {
            
            return entity.properties.count
        }
        
        return 0
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        if let entity = self.entity {
            
            return entity.fetchResults.count
        }
        
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            let cell: CDDPropertyCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(String(CDDPropertyCollectionViewCell.self), forIndexPath: indexPath) as! CDDPropertyCollectionViewCell
            
            cell.configure(self.entity!.properties[indexPath.row])
            
            return cell
        } else {
         
            let cell: CDDObjectCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(String(CDDObjectCollectionViewCell.self), forIndexPath: indexPath) as! CDDObjectCollectionViewCell
            
            if let record: NSManagedObject = self.entity!.fetchResults[indexPath.section] as? NSManagedObject {
                
                print(record)
                
                cell.configure(record, propertyName: self.entity!.properties[indexPath.row].name)
            }
            
            return cell
        }
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 0, bottom: 2, right: 0)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
         return self.entity!.properties[indexPath.row].size
    }
}
