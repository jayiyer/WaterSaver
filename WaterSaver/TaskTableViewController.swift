//
//  TaskViewController.swift
//  TodoList
//
//  Created by Jay Iyer on 4/14/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    var tasks = [Task]()
    var numTotalGallonsUsedForStats = 0;
    @IBOutlet var statsButton: UIBarButtonItem!
    var dateCreated = NSDate()
    var justOnceAlert:Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        justOnceAlert = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    var tempNumGallonsUsed = 0;
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath)
        let task = tasks[indexPath.row] as Task
        
        if (task.totalNumberofGallonsOfWaterUsed! == 1) {
            cell.textLabel?.text = "\(task.waterUsageCategory!): \(task.totalNumberofGallonsOfWaterUsed!) gallon used"
        } else {
            cell.textLabel?.text = "\(task.waterUsageCategory!): \(task.totalNumberofGallonsOfWaterUsed!) gallons used"
        }

        tempNumGallonsUsed = task.totalNumberofGallonsOfWaterUsed!
        
        if justOnceAlert {
            let alertController = UIAlertController(title: "Confirm?", message:
                "To confirm your water usage entry, please tap the entry.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
            justOnceAlert = false
        }
        
        

//        print("tempNumGallonsUsed: ", tempNumGallonsUsed)
        
        if (task.confirmed) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        return cell
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)

        tasks[indexPath.row].confirmed = !tasks[indexPath.row].confirmed
        if (tasks[indexPath.row].confirmed) {
            self.numTotalGallonsUsedForStats += tempNumGallonsUsed
        } else {
            self.numTotalGallonsUsedForStats -= tempNumGallonsUsed
        }
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
    }
    
 

    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        if (segue.identifier == "fromStats") {
            return
        }
        
        let source = segue.sourceViewController as! AddTaskViewController
        let task = source.task as Task!
        
        if ((task) != nil) {
            tasks.append(task)
            self.tableView.reloadData()
        }
    }
    

    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            tasks.removeAtIndex(indexPath.row)
            self.tableView.reloadData()
        }
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier != "Add") {
            let nav = segue.destinationViewController as! UINavigationController
            let dest = nav.topViewController as! StatsViewController
            dest.numTotalGallonsUsedForStats = self.numTotalGallonsUsedForStats
        }
        
        if (segue.identifier == "StatsSegue") {
            let dateNow = NSDate()
            let interval = dateNow.timeIntervalSinceDate(dateCreated)
            if (interval >= 86400) {
                self.numTotalGallonsUsedForStats = 0;
                let nav = segue.destinationViewController as! UINavigationController
                let dest = nav.topViewController as! StatsViewController
                dest.numTotalGallonsUsedForStats = self.numTotalGallonsUsedForStats
                self.dateCreated = NSDate()

            }
        }
    }
}