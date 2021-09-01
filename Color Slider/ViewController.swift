//
//  ViewController.swift
//  Color Slider
//
//  Created by Kutay Karakamış on 29.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorArea: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeAreColor(_ sender: Any) {
        let redColor : CGFloat = CGFloat((redSlider.value-redSlider.minimumValue) / (redSlider.maximumValue - redSlider.minimumValue))
        let greenColor : CGFloat = CGFloat((greenSlider.value-greenSlider.minimumValue) / (greenSlider.maximumValue - greenSlider.minimumValue))
        let blueColor: CGFloat = CGFloat((blueSlider.value-blueSlider.minimumValue) / (blueSlider.maximumValue - blueSlider.minimumValue))
        
        
        colorArea.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
    
}

