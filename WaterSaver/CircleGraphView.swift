//
//  CircleGraphView.swift
//  WaterSaver
//
//  Created by Jay Iyer on 4/24/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

@IBDesignable
class CircleGraphView: UIView {
    
    override func drawRect(rect: CGRect) {
        let fullCircle = 2.0 * CGFloat(M_PI)
        let centerPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect))
        let arcWidth:CGFloat = 1
        let radius = (CGRectGetWidth(rect) - arcWidth) / 2.0
        
        let context = UIGraphicsGetCurrentContext()
        
        //make the inner circle
        CGContextSetFillColorWithColor(context, UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 0.0).CGColor)
        CGContextAddArc(context, centerPoint.x, centerPoint.y, radius , 0, fullCircle, 0)
        CGContextFillPath(context)
        
        //make the outer circle
        let outerCircleColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0)
        CGContextSetStrokeColorWithColor(context, outerCircleColor.CGColor)
        CGContextSetLineWidth(context, arcWidth)
        CGContextAddArc(context, centerPoint.x, centerPoint.y, radius, 0, fullCircle, 0)
        CGContextStrokePath(context)
    }
}
