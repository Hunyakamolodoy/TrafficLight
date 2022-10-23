//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий Селезнев on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.bounds.height / 2
        yellowView.layer.cornerRadius = yellowView.bounds.height / 2
        greenView.layer.cornerRadius = greenView.bounds.height / 2
        
        redView.alpha = 0.2
        yellowView.alpha = 0.2
        greenView.alpha = 0.2
        
        startButton.layer.cornerRadius = 15
    }

    @IBAction func colorizeButtonTapped() {
        
        switch true {
        case redView.alpha == 1:
            redView.alpha = 0.2
            yellowView.alpha = 1
        case yellowView.alpha == 1:
            yellowView.alpha = 0.2
            greenView.alpha = 1
        case greenView.alpha == 1:
            redView.alpha = 1
            greenView.alpha = 0.2
        default:
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
        }
    }
    
}
