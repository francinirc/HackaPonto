//
//  NSDate.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/18/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import Foundation

extension NSDate {
    
    convenience init(dateString: String) {
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "E, dd MMM yyyy HH:mm:ss Z"
        //dateStringFormatter.timeZone = NSTimeZone(name: "GMT")
        dateStringFormatter.timeZone = NSTimeZone.localTimeZone()
        let date = dateStringFormatter.dateFromString(dateString)
        
        self.init(timeInterval:0, sinceDate:date!)
    }
    
    func dateString() -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        //formatter.timeZone = NSTimeZone(name: "GMT")
        formatter.timeZone = NSTimeZone.localTimeZone()
        
        return formatter.stringFromDate(self)
    }
    
//    func getDate() -> NSDate {
//        let formatter = NSDateFormatter()
//        formatter.dateFormat = "dd-MM-yyyy"
//        formatter.timeZone = NSTimeZone(name: "GMT")
//        
//        return formatter.timeStyle(self)
//    }
    
    func timeString() -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        formatter.timeZone = NSTimeZone(name: "GMT")
        
        return formatter.stringFromDate(self)
    }
}