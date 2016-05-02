//
//  Task.swift
//  TodoList
//
//  Created by Jay Iyer on 4/14/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

struct Task {
    var waterUsageCategory: String?
    var confirmed = false
    var totalNumberofGallonsOfWaterUsed: Int?

    init(waterUsageCategory: String?, totalNumberofGallonsOfWaterUsed: Int?) {
        self.waterUsageCategory = waterUsageCategory
        self.totalNumberofGallonsOfWaterUsed = totalNumberofGallonsOfWaterUsed
    }
}