//
//  University+CoreDataProperties.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/7/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension University {

    @NSManaged var cidade: String?
    @NSManaged var nome: String?
    @NSManaged var uf: String?
    @NSManaged var workSchedule: WorkSchedule?

}
