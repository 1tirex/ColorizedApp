//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorizedView: UIView!
    @IBOutlet var opacitySlider: UISlider!
    
    @IBOutlet var valueRedSlider: UILabel!
    @IBOutlet var valueGreenSlider: UILabel!
    @IBOutlet var valueBlueSlider: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var saveColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bottomSetting()
        setupSliders()
        setupLable()
    }

    @IBAction func changeOpacitySlider() {
        setupLable()
    }
    @IBAction func redSliderAction() {
        valueRedSlider.text = String(round(redSlider.value * 1000) / 1000)
        setupLable()
    }
    @IBAction func greenSliderAction() {
        valueGreenSlider.text = String(round(greenSlider.value * 1000) / 1000)
        setupLable()
    }
    @IBAction func blueSliderAction() {
        valueBlueSlider.text = String(round(blueSlider.value * 1000) / 1000)
        setupLable()
    }
    
    @IBAction func saveColorView() {
        view.backgroundColor = colorizedView.backgroundColor
    }
    
    // MARK: - Private Methods
    private func setupLable() {
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(opacitySlider.value))
    }
    
    private func setupSliders() {
        setupSlider(redSlider, .red)
        setupSlider(blueSlider, .blue)
        setupSlider(greenSlider, .green)
        
        setupValueLabel(valueRedSlider, redSlider)
        setupValueLabel(valueBlueSlider, blueSlider)
        setupValueLabel(valueGreenSlider, greenSlider)
    }
    
    private func setupSlider(_ slider: UISlider, _ color: UIColor) {
        slider.minimumTrackTintColor = color
    }
    
    private func setupValueLabel(_ label: UILabel, _ slider: UISlider) {
        label.text = String(slider.value)
    }
    
    private func bottomSetting() {
        saveColor.backgroundColor = .white
        saveColor.layer.cornerRadius = 20
    }
}

