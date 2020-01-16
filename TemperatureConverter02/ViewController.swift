//
//  ViewController.swift
//  TemperatureConverter02
//
//  Created by Siddharth Kurnal on 1/15/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusTemperatureLabel: UILabel!
    
    @IBOutlet weak var fahrenheitTemperatureLabel: UILabel!
    
    @IBOutlet weak var temperatureSlider: UISlider!
    
    @IBAction func changeTemperature(_ sender: UISlider) {
        let temoConverter = TemperatureConverter()
        let celcius:Float = temperatureSlider.value
        let fahrenheit = temoConverter.celciusToFahrenheit(Double(celcius))
        celciusTemperatureLabel.text = "\(String(format: "%.2f", celcius))°C"
        fahrenheitTemperatureLabel.text = "\(String(format: "%.2f", fahrenheit))°F"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

