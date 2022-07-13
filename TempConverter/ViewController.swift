//
//  ViewController.swift
//  TempConverter
//
//  Created by admin on 13.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var farenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        celsiusLabel.text = "\(Int(round(sender.value)))ºC"
        farenheitLabel.text = "\(Int(round(sender.value * 9 / 5 + 32)))ºF"
    }
    
    
}

