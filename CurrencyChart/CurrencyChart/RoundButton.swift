//
//  RoundButton.swift
//  CurrencyChart
//
//  Created by Clive Alvares on 2017-09-12.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
