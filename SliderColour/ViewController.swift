//
//  ViewController.swift
//  SliderColour
//
//  Created by Test on 10/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
   
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        setColor()
        setValueForLabel ()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func rgbSlider(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            redLabel.text = string (from: sender)
        case 1:
            greenLabel.text = string(from: sender)
        case 2:
            blueLabel.text = string (from: sender)
        default:
            break
        }
        setColor()
        setValueForLabel()
    }
    private func setColor (){
        colorView.backgroundColor = UIColor(
                    red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value),
                    alpha: 1)
    }
    
    private func setValueForLabel () {
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    
    private func string (from slider: UISlider) -> String {
        return String (format: "%.2f", slider.value)
    }
}
