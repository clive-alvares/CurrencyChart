//
//  ChartCell.swift
//  CurrencyChartImproved
//
//  Created by Clive Alvares on 2017-09-20.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

import UIKit

class ChartCell: UIView {
//    
//    var view1 : UIView
//    var view2 : UIView
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var rate: Double = 1.0
    var inverseRate: Double {
        if rate != 0
        {
            return 1/self.rate
        }
        else
        {
            return 0.0
        }
    }
    
    
    init(Currency: String) {
        
        let view1 = UIImageView(image: #imageLiteral(resourceName: "british-flag-small"))
        let view2 = UILabel(frame: CGRect.zero)
        
        let curLabel = view2 as! UILabel
        curLabel.text = Currency
        super.init(frame: CGRect.zero)
 
        self.translatesAutoresizingMaskIntoConstraints = false
        if(Currency == "USD") {
            view1 = UIImageView(image: #imageLiteral(resourceName: "american-flag-small"))
            
        } else if(Currency == "AMD") {
            view1 = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
            
        }
        
        view1.contentMode = .scaleAspectFit
        view1.clipsToBounds = true
        self.addSubview(view2)
        self.addSubview(view1)
       
        let tap = UITapGestureRecognizer(target:self, action: #selector(ChartCell.handleTap(sender:)))
        tap.delegate = self
        self.view1.addGestureRecognizer(tap)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        curLabel.textAlignment = .center
        
        //add constraint
        view1.widthAnchor.constraint(equalTo: self.widthAnchor, constant:0).isActive = true
        view2.widthAnchor.constraint(equalTo: view1.widthAnchor, constant:0).isActive = true
        view2.heightAnchor.constraint(equalTo: view1.heightAnchor, constant:0).isActive = true
        view1.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant:0).isActive = true
        view2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant:0).isActive = true

        view2.topAnchor.constraint(equalTo:view1.bottomAnchor, constant:15).isActive = true
        view1.topAnchor.constraint(equalTo: self.topAnchor, constant:0).isActive = true
        view2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant:0).isActive = true
        
    }
    
    @objc private func handleTap(sender: UITapGestureRecognizer)
    {
        // handling code
        
    }
    
    init()
    {
        view1 = UILabel(frame: CGRect.zero)
        view2 = UILabel(frame: CGRect.zero)

        super.init(frame: CGRect.zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        let inverse = view2 as! UILabel
        let rate = view1 as! UILabel
        rate.text = "1.00000"
        inverse.text = "1.00000"
        self.addSubview(view1)
        self.addSubview(view2)
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        rate.textAlignment = .center
        inverse.textAlignment = .center
        
        view1.widthAnchor.constraint(equalTo: self.widthAnchor, constant:0).isActive = true
        view2.widthAnchor.constraint(equalTo: view1.widthAnchor, multiplier: 1.0).isActive = true
        view2.heightAnchor.constraint(equalTo: view1.heightAnchor, constant:0).isActive = true
        view1.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant:0).isActive = true
        view2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant:0).isActive = true
        view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant:0).isActive = true
        view1.topAnchor.constraint(equalTo: self.topAnchor, constant:0).isActive = true
        view2.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant:0).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
        
    }

}

extension ChartCell: UIGestureRecognizerDelegate
{
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive press: UIPress) -> Bool {
        return true
    }
}
