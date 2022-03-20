//
//  ViewController.swift
//  trafficLight
//
//  Created by Егоров Михаил on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var showTextButton: UIButton!
    
    @IBOutlet var collectionLights: UIStackView! //stackView
    
    private var pressButtonCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showTextButton.layer.cornerRadius = 30
    }
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }
    
    @IBAction func pressButton() {
        
        switch pressButtonCount {
        case 0:
            showTextButton.setTitle("NEXT", for: .normal)
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            pressButtonCount += 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            pressButtonCount += 1
        default:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            pressButtonCount = 0
            showTextButton.setTitle("AGAIN?", for: .normal)
        }
       
    }
    

}

