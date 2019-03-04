//
//  BlinkingLabel.swift
//  ActivityEnrollment
//
//  Created by Sam Shi on 3/4/19.
//

import UIKit

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIView.AnimationOptions = UIView.AnimationOptions(arrayLiteral: UIView.AnimationOptions.repeat, UIView.AnimationOptions.autoreverse)
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
