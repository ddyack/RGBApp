//
//  ViewController.swift
//  RGBApp
//
//  Created by ddyack on 21.08.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorMixer: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorMixer.layer.cornerRadius = 50
        colorMixer.backgroundColor = .black
        
        // Sliders
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        // Color Values
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
    }
    @IBAction func slidersAction() {
        updateColor()
        upfateValues()
    }
    
    
    
    private func updateColor() {
        let color = UIColor(red: CGFloat(redSlider.value),
                            green: CGFloat(greenSlider.value),
                            blue: CGFloat(blueSlider.value),
                            alpha: 1
        )
        
        colorMixer.backgroundColor = color
    }
    
    private func upfateValues(){
        redValue.text = String(Float(round(100 * redSlider.value) / 100))
        greenValue.text = String(Float(round(100 * greenSlider.value) / 100))
        blueValue.text = String(Float(round(100 * blueSlider.value) / 100))
    }
}

