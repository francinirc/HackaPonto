//
//  DailyHours+CoreDataProperties.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/5/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension DailyHours {

    @NSManaged var date: NSDate?
    @NSManaged var justification: String?
    @NSManaged var hoursHistory: NSSet?

}
