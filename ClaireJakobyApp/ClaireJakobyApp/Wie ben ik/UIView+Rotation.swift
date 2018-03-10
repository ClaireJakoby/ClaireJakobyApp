//
//  UIView+Rotation.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 10-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // Start Rotating view
    // duraiotn double = time rotation
    func startRotating(duration: Double = 6) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            
            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
}
