//
//  HoursHistory.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/5/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import Foundation
import CoreData


class HoursHistory: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    convenience init()
    {
        // get context
        let context: NSManagedObjectContext = DatabaseManager.sharedInstance.managedObjectContext
        
        // create entity description
        let entityDescription: NSEntityDescription? = NSEntityDescription.entityForName("HoursHistory", inManagedObjectContext: context)
        
        // call super using
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
    }
    
}
