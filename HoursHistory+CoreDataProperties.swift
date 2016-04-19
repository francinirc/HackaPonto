//
//  HoursHistory+CoreDataProperties.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/18/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension HoursHistory {

    @NSManaged var time: NSDate?
    @NSManaged var date: NSDate?
    @NSManaged var justification: String?

}
