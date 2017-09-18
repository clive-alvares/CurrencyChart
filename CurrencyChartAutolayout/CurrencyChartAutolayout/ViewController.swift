//
//  ViewController.swift
//  CurrencyChartAutolayout
//
//  Created by Clive Alvares on 2017-09-17.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Set up Title label
        let xeLiveEx = UILabel(frame: CGRect(x:11, y:20, width:183, height:45))
        
        xeLiveEx.textColor = UIColor.blue
        xeLiveEx.backgroundColor = UIColor.white
        xeLiveEx.text = "XE Live Exchange Rates"
        xeLiveEx.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(xeLiveEx);
        
        xeLiveEx.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        xeLiveEx.heightAnchor.constraint(equalToConstant: 45).isActive = true
        xeLiveEx.widthAnchor.constraint(equalToConstant: 183).isActive = true
        xeLiveEx.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
        
        
        //Set up Rows
        let amerColImg = UIImageView(image: #imageLiteral(resourceName: "american-flag-small"))
        
        
        
        let USD = UILabel(frame: CGRect(x:115, y:27, width:30, height:18.5))
        USD.textColor = UIColor.black
        USD.text = "USD"
        let usLabel1 = UILabel(frame: CGRect(x:115, y:47, width:60, height:18.5))
        let usLabel2 = UILabel(frame: CGRect(x:115, y:67, width:60, height:18.5))
        let usLabel3 = UILabel(frame: CGRect(x:115, y:87, width:60, height:18.5))
        let usLabel4 = UILabel(frame: CGRect(x:115, y:107, width:60, height:18.5))
        let usLabel5 = UILabel(frame: CGRect(x:115, y:127, width:60, height:18.5))
        let usLabel6 = UILabel(frame: CGRect(x:115, y:147, width:60, height:18.5))
        
        usLabel1.text = "1.00000"
        usLabel2.text = "1.00000"
        usLabel3.text = "1.00000"
        usLabel4.text = "1.00000"
        usLabel5.text = "1.00000"
        usLabel6.text = "1.00000"
       
        let usCol = UIStackView(arrangedSubviews: [ USD, usLabel1, usLabel2, usLabel3, usLabel4, usLabel5, usLabel6])
        
        
        usCol.axis = .vertical
        usCol.distribution = .equalSpacing
        usCol.spacing = 5.0
        usCol.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(usCol)
        self.view.addSubview(amerColImg)
        
        
        amerColImg.heightAnchor.constraint(equalToConstant: 18.5)
        amerColImg.widthAnchor.constraint(equalToConstant: 30)
        amerColImg.leadingAnchor.constraint(equalTo: usCol.leadingAnchor)
        xeLiveEx.bottomAnchor.constraint(equalTo: amerColImg.topAnchor, constant: 5)
        usCol.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        usCol.topAnchor.constraint(equalTo: amerColImg.bottomAnchor, constant: 20).isActive = true
        usCol.bottomAnchor.constraint(equalTo: self.view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        usCol.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor, constant: 0).isActive = true
        
        
        
        
        
//        let ausCol = UIImageView(image: #imageLiteral(resourceName: "australian-flag-small"))
//        
//        let armenCol = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
//        let indCol = UIImageView(image: #imageLiteral(resourceName: "indian-flag-small"))
//        
//        
//        let AUS = UILabel(frame: CGRect(x:174, y:27, width:30, height:15.5))
//        let AMD = UILabel(frame: CGRect(x:234, y:27, width:30, height:15.5))
//        let INR = UILabel(frame: CGRect(x:295, y:27, width:30, height:15.5))
        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
        
        
        
        
        
    }
//    func arrayOfLabels(_: ) -> [UILabel] {
//        var array = [UILabel]()
//        for i in 1...6 {
//            var label = UILabel(
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

