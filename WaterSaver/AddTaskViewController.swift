//
//  TaskDetailsViewController.swift
//  TodoList
//
//  Created by Jay Iyer on 4/14/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var task: Task?
    
    @IBOutlet var saveTask: UIBarButtonItem!
//    @IBOutlet var taskTextField: UITextField!
    @IBOutlet weak var waterUsageCategoriesPickerView: UIPickerView!
    
    let waterUsageCategories = [
        ["", "Bathtub", "Dishwasher", "Faucet", "Garden Hose", "Shower", "Sprinkler", "Toilet Flushes"],
        ["", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
    ]
    
    let waterUsageCategoriesGPV: [String:Int] = ["Bathtub": 4, "Dishwasher": 1, "Faucet": 2, "Garden Hose": 10, "Shower": 3, "Sprinkler": 5, "Toilet Flushes": 3]
    
    var category:String = ""
    var value:String = ""
    var totalNumGallonsUsed:Int = 0
    
    @IBOutlet weak var waterUsageCategoryLabel: UILabel!
    @IBOutlet weak var waterUsageValueLabel: UILabel!
    @IBOutlet weak var totalNumberGallonsUsedLabel: UILabel!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (sender !== self.saveTask ) {
            return
        }
        if (category.characters.count > 0 && totalNumGallonsUsed > 0) {
            task = Task(waterUsageCategory: category, totalNumberofGallonsOfWaterUsed: totalNumGallonsUsed)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // method for the number of columns in the picker element
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return waterUsageCategories.count
    }
    
    // method for the number of rows of data for each component in the UIPickerView element    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return waterUsageCategories[component].count
    }
    
    // method for the data for a specific row and specific component
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return waterUsageCategories[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch (component) {
        case 0:
            category = waterUsageCategories[component][row]
            waterUsageCategoryLabel.text = category
        case 1:
            value = waterUsageCategories[component][row]
            waterUsageValueLabel.text = value
        default: break
        }
        
        let value_num:Int = Int(value) ?? 0
        
        totalNumGallonsUsed = waterUsageCategoriesGPV[category]! * value_num
        totalNumberGallonsUsedLabel.text = String(totalNumGallonsUsed)
    }
}
