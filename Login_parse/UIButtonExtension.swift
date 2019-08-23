//
//  UIButtonExtension.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit



extension UIButton {
    
    
    func pulsate() {
        
        
        let pulse                 = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration            = 0.6
        pulse.fromValue           = 0.95
        pulse.toValue             = 1.0
        pulse.autoreverses        = true
        pulse.repeatCount         = 2
        pulse.initialVelocity     = 0.50
        pulse.damping             = 1.0
        
        layer.add(pulse,forKey: nil)
        
        
    }
    
    
    
    func shake() {
        
        let shake                 = CABasicAnimation(keyPath: "position")
        shake.duration            = 0.1
        shake.repeatCount         = 2
        shake.autoreverses        = true
        
        let fromPoint             = CGPoint(x: center.x-5, y: center.y)
        let fromValue             = NSValue(cgPoint:fromPoint)
        
        let toPoint               = CGPoint(x: center.x+5, y: center.y)
        let toValue               = NSValue(cgPoint: toPoint)
        
        shake.fromValue           = fromValue
        shake.toValue             = toValue
        
        layer.add(shake, forKey: nil)
        
        
        
    }
    
    
    
    
    
}

