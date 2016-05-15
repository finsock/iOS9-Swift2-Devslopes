//
//  ViewController.swift
//  CoolApp
//
//  Created by Csaba Gaspar on 2016-05-14.
//  Copyright © 2016 Csaba Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coolBtn: UIButton!
    @IBOutlet weak var coolBg: UIImageView!
    @IBOutlet weak var coolLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coolBtn.backgroundColor = UIColor.clearColor()
        coolBtn.layer.cornerRadius = 5
        coolBtn.layer.borderWidth = 1
        coolBtn.layer.borderColor = UIColor.blackColor().CGColor
      
        coolBg.hidden = true
        coolLogo.hidden = true
        coolBtn.hidden = false
    }

    
    @IBAction func btnPressed(sender: UIButton) {
        
        coolBg.hidden = false
        coolLogo.hidden = false
        coolBtn.hidden = true
    }

}

