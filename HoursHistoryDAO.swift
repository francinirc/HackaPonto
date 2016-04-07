//
//  HoursHistoryDAO.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/5/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import Foundation
import CoreData

class HoursHistoryDAO {
    
    // insert new object
    static func insert(hoursHistory: HoursHistory) -> Bool {
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(hoursHistory)
        var inserted = false
        
        do {
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            inserted = true
            
        } catch let error as NSError {
            print("Erro ao inserir: ", error)
        }
        
        return inserted
    }
    
    // delete object
    static func delete(hoursHistory: HoursHistory) -> Bool {
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(hoursHistory)
        var deleted = false
        
        do {
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            deleted = true
            
        } catch let error as NSError {
            print("Erro ao deletar: ", error)
        }
        
        return deleted
    }
    
    static func fetchHours() -> [HoursHistory] {
        let request = NSFetchRequest(entityName: "HoursHistory")
        //request.sortDescriptors = [NSSortDescriptor(key: "date", ascending:true)]
        
        var results = [HoursHistory]()
        
        do {
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [HoursHistory]
            print(results.count)
            
        } catch let error as NSError {
            print("Erro ao buscar :", error)
        }
        
        return results
    }

}
