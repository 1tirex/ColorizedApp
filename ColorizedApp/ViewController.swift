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
        
        setupSliders()
    }
    
    override func viewDidLayoutSubviews() {
        bottomSetting()
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
        setupSluderOpacity()
        setupSluderRed()
        setupSliderGreen()
        setupSliderBleu()
    }
    
    private func setupSluderOpacity() {
        opacitySlider.value = 0.5
        opacitySlider.minimumValue = 0
        opacitySlider.maximumValue = 1
        
    }
    
    private func setupSluderRed() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        valueRedSlider.text = String(redSlider.value)
    }
    private func setupSliderGreen() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        valueGreenSlider.text = String(greenSlider.value)
    }
    private func setupSliderBleu() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        valueBlueSlider.text = String(blueSlider.value)
    }
    
    private func bottomSetting() {
        saveColor.backgroundColor = .white
        saveColor.layer.cornerRadius = 20
    }
}

