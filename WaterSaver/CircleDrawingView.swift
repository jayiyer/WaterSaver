//
//  CircleDrawingView.swift
//  WaterSaver
//
//  Created by Jay Iyer on 4/24/16.
//  Copyright © 2016 Jay Iyer. All rights reserved.
//

import UIKit

class CircleDrawingView: UIView {
    
    let circleLayer = CAShapeLayer()
    var endAngleMultiplier:Double?
    
    let strokeEndAnimation: CAAnimation = {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.toValue = 1
        animation.duration = 2
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        return animation
    }()
    
    
    func setup(){
        circleLayer.lineWidth = 15.0
        circleLayer.strokeColor = tintColor.CGColor
        layer.addSublayer(circleLayer)
        circleLayer.addAnimation(strokeEndAnimation, forKey: "strokeEnd")
        backgroundColor = UIColor.clearColor()
        circleLayer.fillColor = UIColor.clearColor().CGColor
        layoutSubviews()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        _ = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = min(bounds.width, bounds.height) / 2 - circleLayer.lineWidth/2
        let startAngle = CGFloat(-M_PI_2)
        let endAngle = startAngle + CGFloat(M_PI * makeRandomNumber())
        let path = UIBezierPath(arcCenter: CGPointZero, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        circleLayer.position = CGPointMake(145, 75)
        circleLayer.path = path.CGPath
    }
    
    
    func makeRandomNumber()->Double {
        //random number between 1 and 2
        let counterCalculation = ((Double)(CounterViewController().counterNumber))*4
        //let counterCalculation = ((Double)(2000))*4 // to show off circle graph animation
        let test = (Double)(counterCalculation)
        endAngleMultiplier = (test*3)/(ViewController().waterAmount)
        print(endAngleMultiplier)
        return endAngleMultiplier!
        CircleDrawingView().setup() //THIS FUNCTION NEEDS TO GO FROM THE SAVE BUTTON
    }
}

