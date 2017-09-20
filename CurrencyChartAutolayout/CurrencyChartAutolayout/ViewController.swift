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
        
        
        //Set up Columns
        // set up us column
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
        usCol.spacing = 15.0
        usCol.translatesAutoresizingMaskIntoConstraints = false

        
        // set up british col
        let britColImg = UIImageView(image: #imageLiteral(resourceName: "british-flag-small"))
        britColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let britFlgView = UIView(frame: CGRect(x:0, y:27, width:30, height:18.5))
        britFlgView.addSubview(britColImg)
        
        
        
        let GBP = UILabel(frame: CGRect(x:0, y:37, width:30, height:18.5))
        GBP.textColor = UIColor.black
        GBP.text = "GBP"
        let colBritTitle = UIStackView(arrangedSubviews: [britFlgView, GBP])
        colBritTitle.axis = .vertical
        colBritTitle.distribution = .equalSpacing
        colBritTitle.spacing = 20.0
        colBritTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let britLabel1 = UILabel(frame: CGRect(x:115, y:47, width:60, height:18.5))
        let britLabel2 = UILabel(frame: CGRect(x:115, y:67, width:60, height:18.5))
        let britLabel3 = UILabel(frame: CGRect(x:115, y:87, width:60, height:18.5))
        let britLabel4 = UILabel(frame: CGRect(x:115, y:107, width:60, height:18.5))
        let britLabel5 = UILabel(frame: CGRect(x:115, y:127, width:60, height:18.5))
        let britLabel6 = UILabel(frame: CGRect(x:115, y:147, width:60, height:18.5))
        
        britLabel1.text = "1.00000"
        britLabel2.text = "1.00000"
        britLabel3.text = "1.00000"
        britLabel4.text = "1.00000"
        britLabel5.text = "1.00000"
        britLabel6.text = "1.00000"
        
        
        
        
        let britCol = UIStackView(arrangedSubviews: [colBritTitle, britLabel1, britLabel2, britLabel3, britLabel4, britLabel5, britLabel6])
        
        
        britCol.axis = .vertical
        
        britCol.spacing = 15.0
        britCol.translatesAutoresizingMaskIntoConstraints = false
        
        // set up armenian col
        let armenTitColImg = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
        armenTitColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let armenTitFlgView = UIView(frame: CGRect(x:0, y:27, width:30, height:18.5))
        armenTitFlgView.addSubview(armenTitColImg)
        
        
        
        let titAMD = UILabel(frame: CGRect(x:0, y:37, width:30, height:18.5))
        titAMD.textColor = UIColor.black
        titAMD.text = "AMD"
        let colArmTitle = UIStackView(arrangedSubviews: [armenTitFlgView, titAMD])
        colArmTitle.axis = .vertical
        colArmTitle.distribution = .equalSpacing
        colArmTitle.spacing = 20.0
        colArmTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let armLabel1 = UILabel(frame: CGRect(x:115, y:47, width:60, height:18.5))
        let armLabel2 = UILabel(frame: CGRect(x:115, y:67, width:60, height:18.5))
        let armLabel3 = UILabel(frame: CGRect(x:115, y:87, width:60, height:18.5))
        let armLabel4 = UILabel(frame: CGRect(x:115, y:107, width:60, height:18.5))
        let armLabel5 = UILabel(frame: CGRect(x:115, y:127, width:60, height:18.5))
        let armLabel6 = UILabel(frame: CGRect(x:115, y:147, width:60, height:18.5))
        
        armLabel1.text = "1.00000"
        armLabel2.text = "1.00000"
        armLabel3.text = "1.00000"
        armLabel4.text = "1.00000"
        armLabel5.text = "1.00000"
        armLabel6.text = "1.00000"
        
        
        
        
        let armCol = UIStackView(arrangedSubviews: [colArmTitle, armLabel1, armLabel2, armLabel3, armLabel4, armLabel5, armLabel6])
        
        
        armCol.axis = .vertical
        
        armCol.spacing = 15.0
        armCol.translatesAutoresizingMaskIntoConstraints = false
        // set up stack of stacks
        let mainStack = UIStackView(arrangedSubviews: [usCol, britCol, armCol,])
        mainStack.axis = .horizontal
        mainStack.distribution = .fillProportionally
        mainStack.spacing = 0.0
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.alignment = .leading
        
        
        self.view.addSubview(mainStack)
        
        
        //set up flag col
        let ausColImg = UIImageView(image: #imageLiteral(resourceName: "australian-flag-small"))
        ausColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let ausFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        ausFlgView.addSubview(ausColImg)
        let AUS = UILabel(frame: CGRect(x:30, y:20, width:60, height:18.5))
        AUS.text = "AUS"
        let ausRow = UIStackView(arrangedSubviews: [ausFlgView, AUS])
        ausRow.axis = .horizontal
        ausRow.distribution = .fillProportionally
        ausRow.spacing = 0.0
        ausRow.translatesAutoresizingMaskIntoConstraints = false
        ausRow.alignment = .trailing
        
        
        let armenColImg = UIImageView(image: #imageLiteral(resourceName: "armenian-flag-small"))
        armenColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let armenFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        armenFlgView.addSubview(armenColImg)
        let AMD = UILabel(frame: CGRect(x:30, y:20, width:60, height:18.5))
        AMD.text = "AMD"
        let amdRow = UIStackView(arrangedSubviews: [armenFlgView, AMD])
        amdRow.axis = .horizontal
        amdRow.distribution = .fillProportionally
        amdRow.spacing = 0.0
        amdRow.translatesAutoresizingMaskIntoConstraints = false
        amdRow.alignment = .trailing
        
        let indColImg = UIImageView(image: #imageLiteral(resourceName: "indian-flag-small"))
        indColImg.frame = CGRect(x:0, y:0, width:30, height:18.5)
        let indFlgView = UIView(frame: CGRect(x:0, y:0, width:30, height:18.5))
        indFlgView.addSubview(indColImg)
        let INR = UILabel(frame: CGRect(x:30, y:20, width:60, height:18.5))
        INR.text = "INR"
        let indRow = UIStackView(arrangedSubviews: [indFlgView, INR])
        indRow.axis = .horizontal
        indRow.distribution = .fillProportionally
        indRow.spacing = 0.0
        indRow.translatesAutoresizingMaskIntoConstraints = false
        indRow.alignment = .trailing
        
        let flagCol = UIStackView(arrangedSubviews: [ausRow, amdRow, indRow])
        
        flagCol.axis = .vertical
        flagCol.spacing = 55
        flagCol.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(flagCol)
        
        
        colTitle.widthAnchor.constraint(equalToConstant: 30).isActive = true
        colTitle.heightAnchor.constraint(equalToConstant: 37).isActive = true
        colBritTitle.widthAnchor.constraint(equalToConstant: 30).isActive = true
        colBritTitle.heightAnchor.constraint(equalToConstant: 37).isActive = true
        colArmTitle.widthAnchor.constraint(equalToConstant: 30).isActive = true
        colArmTitle.heightAnchor.constraint(equalToConstant: 37).isActive = true
     
        britFlgView.widthAnchor.constraint(equalToConstant:30).isActive = true
        amerFlgView.widthAnchor.constraint(equalToConstant:30).isActive = true
        amerFlgView.heightAnchor.constraint(equalToConstant:18.5).isActive = true
        
        ausFlgView.widthAnchor.constraint(equalToConstant:30).isActive = true
        ausFlgView.heightAnchor.constraint(equalToConstant:18.5).isActive = true
        
        indFlgView.widthAnchor.constraint(equalToConstant:30).isActive = true
        indFlgView.heightAnchor.constraint(equalToConstant:18.5).isActive = true
        
        armenFlgView.widthAnchor.constraint(equalToConstant:30).isActive = true
        armenFlgView.heightAnchor.constraint(equalToConstant:18.5).isActive = true
        
        amerColImg.leadingAnchor.constraint(equalTo: amerFlgView.leadingAnchor, constant: 0).isActive = true
        amerColImg.bottomAnchor.constraint(equalTo: amerFlgView.bottomAnchor, constant: 0).isActive = true
        
        armenColImg.leadingAnchor.constraint(equalTo: armenFlgView.leadingAnchor, constant: 0).isActive = true
        armenColImg.bottomAnchor.constraint(equalTo: armenFlgView.bottomAnchor, constant: 0).isActive = true
        
        indColImg.leadingAnchor.constraint(equalTo: indFlgView.leadingAnchor, constant: 0).isActive = true
        indColImg.bottomAnchor.constraint(equalTo: indFlgView.bottomAnchor, constant: 0).isActive = true
        
        ausColImg.leadingAnchor.constraint(equalTo: ausFlgView.leadingAnchor, constant: 0).isActive = true
        ausColImg.bottomAnchor.constraint(equalTo: ausFlgView.bottomAnchor, constant: 0).isActive = true
        
        flagCol.topAnchor.constraint(equalTo: mainStack.topAnchor , constant: 50).isActive = true
        flagCol.widthAnchor.constraint(equalToConstant: 80).isActive = true
        flagCol.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor, constant: 0).isActive = true
        flagCol.heightAnchor.constraint(equalToConstant: 160.0).isActive = true
        
        
        
        mainStack.leadingAnchor.constraint(equalTo: flagCol.trailingAnchor, constant: 0).isActive = true
        mainStack.topAnchor.constraint(equalTo: xeLiveEx.bottomAnchor, constant: 20).isActive = true
        mainStack.heightAnchor.constraint(equalToConstant: 250.0).isActive = true
        mainStack.widthAnchor.constraint(equalToConstant: 320).isActive = true
        
        usCol.heightAnchor.constraint(equalToConstant: 250.0).isActive = true
        usCol.widthAnchor.constraint(equalToConstant: 80).isActive = true
        britCol.heightAnchor.constraint(equalToConstant: 250.0).isActive = true
        britCol.widthAnchor.constraint(equalToConstant: 80).isActive = true
        armCol.heightAnchor.constraint(equalToConstant: 250.0).isActive = true
        armCol.widthAnchor.constraint(equalToConstant: 80).isActive = true
      
        
        
        
        



       
        
        
        
        
        
        
        
        
        
        
        
        
        
       
        
        
        
        
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

