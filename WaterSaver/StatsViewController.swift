//
//  StatsViewController.swift
//  WaterSaver
//
//  Created by Jay Iyer on 4/14/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    var numTotalGallonsUsedForStats = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        MVP version:
        
        let max = 90
        var ratio:Double = 0.00
        var ratioForDisplay: Double = 0.00
        ratio = Double(numTotalGallonsUsedForStats) / Double(max)
        
        if numTotalGallonsUsedForStats <= max {
            progressView.progress = Float(ratio)
            displayLabel.textColor = UIColor.blueColor()
        } else {
            progressView.progress = Float(1)
            progressView.progressTintColor = UIColor.redColor()
            displayLabel.textColor = UIColor.redColor()
        }
        displayLabel.text = String(numTotalGallonsUsedForStats) as String!
        ratioForDisplay = Double(round(100*ratio)/100) * 100
        progressLabel.text = "You have used \(ratioForDisplay)% of your total daily allowed gallons of water"        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

