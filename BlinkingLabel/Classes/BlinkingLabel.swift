//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by user on 7/3/2018.
//

import Foundation

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration:0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}

