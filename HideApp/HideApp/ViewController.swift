//
//  ViewController.swift
//  HideApp
//
//  Created by Csaba Gaspar on 2016-05-11.
//  Copyright © 2016 Csaba Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueDice: UIImageView!
    @IBOutlet weak var redDice: UIImageView!
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueButton.layer.cornerRadius = 5
        redButton.layer.cornerRadius = 5
    }

    @IBAction func hideDice(sender: UIButton) {
        if sender.tag == 0 {
            blueDice.hidden = true
        } else {
            redDice.hidden  = true
        }

    }

}

