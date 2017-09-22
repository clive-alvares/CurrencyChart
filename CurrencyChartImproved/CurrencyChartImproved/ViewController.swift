//
//  ViewController.swift
//  CurrencyChartImproved
//
//  Created by Clive Alvares on 2017-09-20.
//  Copyright © 2017 Clive Alvares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let flagRow = rowMake(cells: [ChartCell(Currency: "USD"), ChartCell(Currency: "AMD"), ChartCell(Currency: "GBP")])
        let labelRow0 = rowMake(cells: [ChartCell(), ChartCell(), ChartCell()])
        let labelRow1 = rowMake(cells: [ChartCell(), ChartCell(), ChartCell()])
        let labelRow2 = rowMake(cells: [ChartCell(), ChartCell(), ChartCell()])
        
        let rowStack = UIStackView(arrangedSubviews: [flagRow, labelRow0, labelRow1, labelRow2])
        rowStack.axis = .vertical
        rowStack.distribution = .fillEqually
        rowStack.alignment = .fill
        rowStack.spacing = 2
        rowStack.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(rowStack)
        
        
        rowStack.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
        rowStack.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        rowStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        rowStack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func rowMake(cells: [ChartCell]) -> UIStackView {
        let row = UIStackView(arrangedSubviews: cells)
        row.axis = .horizontal
        row.distribution = .fillEqually
        row.alignment = .fill
        row.translatesAutoresizingMaskIntoConstraints = false
        return row
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

