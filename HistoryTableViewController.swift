//
//  HistoryTableViewController.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/6/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import UIKit
import CoreData

class HistoryTableViewController: UITableViewController, NSFetchedResultsControllerDelegate {

    var hoursHistoryList = [HoursHistory]()
    var fetchedResultsController = NSFetchedResultsController()
    
    
    let meses = ["Junho", "Maio", "Abril", "Março"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchedResultsController.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
//        fetchedResultsController = HoursHistoryDAO.fetchFullHoursHistory()
//        
//        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //return fetchedResultsController.sections!.count
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let sectionInfo = self.fetchedResultsController.sections![section]
//        print(sectionInfo.numberOfObjects)
//        
//        return sectionInfo.numberOfObjects
        
        return self.meses.count
    
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("cellHours", forIndexPath: indexPath)
//
//        let dateFormatter: NSDateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "HH:mm"
//        
//        let itemHistory = fetchedResultsController.objectAtIndexPath(indexPath) as! HoursHistory
//        let formattedTime = dateFormatter.stringFromDate(itemHistory.time!)
//        
//        cell.textLabel?.text = formattedTime
//        cell.detailTextLabel?.text = itemHistory.justification
//
//        
//        return cell
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellHours", forIndexPath: indexPath)
        cell.textLabel?.text = self.meses[indexPath.row]
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            
//            if HoursHistoryDAO.delete(self.hoursHistoryList[indexPath.row]) {
//                self.hoursHistoryList.removeAtIndex(indexPath.row)
//            
//                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//                
//            }
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let sectionName = self.fetchedResultsController.sections![section].name
//        let dateFormatter: NSDateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "dd-MMM"
//        print(dateFormatter.dateFromString(sectionName))
//        
//        
//        return self.fetchedResultsController.sections![section].name
        return "2016"
    }
    
    
    @IBAction func addRegister(sender: AnyObject) {
        
    }
    
    
    private func showAlertMessage(message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addTextFieldWithConfigurationHandler(nil)
        
        let saveAction = UIAlertAction(title: "Salvar", style: UIAlertActionStyle.Default, handler: {
            action in self.save()
            //let newHour = alert.textFields![0]
        })
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Default, handler: nil)
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    private func save() {
        

    }

    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "editRegister" {
//            if let editRegister = segue.destinationViewController as? EditRegisterViewController {
//                editRegister.hoursHistory = self.fetchedResultsController.objectAtIndexPath(tableView.indexPathForSelectedRow!) as? HoursHistory
//            }
        }
        
    }
    

}
