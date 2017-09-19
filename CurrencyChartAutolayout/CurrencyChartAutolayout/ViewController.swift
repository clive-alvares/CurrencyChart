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
        amerColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let amerFlgView = UIView(frame: CGRect(x:0, y:27, width:30, height:18.5))
        amerFlgView.addSubview(amerColImg)
        
        
        
        let USD = UILabel(frame: CGRect(x:0, y:37, width:30, height:18.5))
        USD.textColor = UIColor.black
        USD.text = "USD"
        let colTitle = UIStackView(arrangedSubviews: [amerFlgView, USD])
        colTitle.axis = .vertical
        colTitle.distribution = .equalSpacing
        colTitle.spacing = 0.0
        colTitle.translatesAutoresizingMaskIntoConstraints = false
        
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
        

 
       
        let usCol = UIStackView(arrangedSubviews: [colTitle, usLabel1, usLabel2, usLabel3, usLabel4, usLabel5, usLabel6])
        
        
        usCol.axis = .vertical
        usCol.distribution = .equalCentering
        usCol.spacing = 0.0
        usCol.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(usCol)
        
        //set up flag col
        let ausColImg = UIImageView(image: #imageLiteral(resourceName: "australian-flag-small"))
        ausColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let ausFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        ausFlgView.addSubview(ausColImg)
        let AUS = UILabel(frame: CGRect(x:30, y:0, width:60, height:18.5))
        AUS.text = "AUS"
        let ausRow = UIStackView(arrangedSubviews: [ausFlgView, AUS])
        ausRow.axis = .horizontal
        ausRow.distribution = .equalSpacing
        ausRow.spacing = 0.0
        ausRow.translatesAutoresizingMaskIntoConstraints = false
        
        
        let armenColImg = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
        armenColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let armenFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        armenFlgView.addSubview(armenColImg)
        let AMD = UILabel(frame: CGRect(x:30, y:0, width:60, height:18.5))
        AMD.text = "AMD"
        let amdRow = UIStackView(arrangedSubviews: [armenFlgView, AMD])
        amdRow.axis = .horizontal
        amdRow.distribution = .equalSpacing
        amdRow.spacing = 0.0
        amdRow.translatesAutoresizingMaskIntoConstraints = false
        
        let indColImg = UIImageView(image: #imageLiteral(resourceName: "indian-flag-small"))
        indColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let indFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        indFlgView.addSubview(indColImg)
        let INR = UILabel(frame: CGRect(x:30, y:0, width:60, height:18.5))
        INR.text = "INR"
        let indRow = UIStackView(arrangedSubviews: [indFlgView, INR])
        indRow.axis = .horizontal
        indRow.distribution = .equalSpacing
        indRow.spacing = 0.0
        indRow.translatesAutoresizingMaskIntoConstraints = false
        
        let flagCol = UIStackView(arrangedSubviews: [ausRow, amdRow, indRow])
        flagCol.axis = .vertical
        flagCol.distribution = .equalCentering
        flagCol.spacing = 40.0
        flagCol.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(flagCol)

        
        
        
        
        amerColImg.leadingAnchor.constraint(equalTo: amerFlgView.leadingAnchor, constant: 0).isActive = true
        amerColImg.bottomAnchor.constraint(equalTo: amerFlgView.bottomAnchor, constant: 0).isActive = true
        
        armenColImg.leadingAnchor.constraint(equalTo: armenFlgView.leadingAnchor, constant: 0).isActive = true
        armenColImg.bottomAnchor.constraint(equalTo: armenFlgView.bottomAnchor, constant: 0).isActive = true
        
        indColImg.leadingAnchor.constraint(equalTo: indFlgView.leadingAnchor, constant: 0).isActive = true
        indColImg.bottomAnchor.constraint(equalTo: indFlgView.bottomAnchor, constant: 0).isActive = true
        
        ausColImg.leadingAnchor.constraint(equalTo: ausFlgView.leadingAnchor, constant: 0).isActive = true
        ausColImg.bottomAnchor.constraint(equalTo: ausFlgView.bottomAnchor, constant: 0).isActive = true
        
        flagCol.topAnchor.constraint(equalTo: usCol.topAnchor , constant: 57).isActive = true
        flagCol.widthAnchor.constraint(equalTo: usCol.widthAnchor, constant: 0.0).isActive = true
        flagCol.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        flagCol.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        
        
        usCol.leadingAnchor.constraint(equalTo: flagCol.trailingAnchor, constant: 0).isActive = true
        usCol.topAnchor.constraint(equalTo: xeLiveEx.bottomAnchor, constant: 20).isActive = true
        usCol.heightAnchor.constraint(equalToConstant: 250.0).isActive = true
        
        
        
        
        
        


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

