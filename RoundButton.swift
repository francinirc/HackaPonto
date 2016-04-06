//
//  RoundButton.swift
//  HackaPonto
//
//  Created by Francini Roberta de Carvalho on 4/5/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import UIKit

@IBDesignable public class RoundButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
        
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = 0.5 * bounds.size.width
        clipsToBounds = true
    }

}
