//
//  ChartCell.swift
//  CurrencyChartImproved
//
//  Created by Clive Alvares on 2017-09-20.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

import UIKit

class ChartCell: UIView {
    
    var view1 : UIView
    var view2 : UIView
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    init(Currency: String) {
        
        
        
        view1 = UIImageView(image: #imageLiteral(resourceName: "british-flag-small"))
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2 = UILabel(frame: CGRect.zero)
        view2.translatesAutoresizingMaskIntoConstraints = false
        super.init(frame: CGRect(x:0,y:0, width:80, height:37))
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if(Currency == "USD") {
            view1 = UIImageView(image: #imageLiteral(resourceName: "american-flag-small"))
            self.addSubview(view1)
        } else if(Currency == "AMD") {
            view1 = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
            self.addSubview(view1)
        }
        
        view1.contentMode = .scaleAspectFit
        self.addSubview(view2)
        
        view1.leadingAnchor.constraint(equalTo: 0, constant: <#T##CGFloat#>)
        
        
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    

}
