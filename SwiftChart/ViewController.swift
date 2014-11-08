//
//  ViewController.swift
//  SwiftChart
//
//  Created by Giampaolo Bellavite on 07/11/14.
//  Copyright (c) 2014 Giampaolo Bellavite. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ChartDelegate {

    @IBOutlet weak var chartLabel: UILabel!
    @IBOutlet weak var chart: Chart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetChartLabel()
        
        let serie = ChartSerie(data: [(x: 1, y: 2), (x: 2, y: -30), (x: 2.1, y: 20), (x: 4, y: 4), (x: 5, y: 3), (x: 6, y: 5), (x: 7, y: 2.5), (x: 8, y: 6)])

        chart.addSerie(serie)
        chart.delegate = self
    
    
    }

    func didTouchInsideChart(chart: Chart, point: CGPoint, axisValues: ChartPoint, data: Array<ChartPoint?>, indexes: Array<Int?>) {
        if let values = data[0] {
            chartLabel.text = "x: \(axisValues.x) \(axisValues.y) | data=\(values.x), \(values.y)"
        }
    }
    
    func didTouchOutsideChart(chart: Chart) {
        resetChartLabel()
    }
    
    func resetChartLabel() {
        chartLabel.text = nil
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        super.didRotateFromInterfaceOrientation(fromInterfaceOrientation)
        
        // Redraw chart on rotation
        chart.setNeedsDisplay()
        resetChartLabel()
    }

}

