//
//  ViewController.swift
//  DuelGame
//
//  Created by Csaba Gaspar on 2016-05-18.
//  Copyright © 2016 Csaba Gaspar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sheriffHitPoints: UITextField!
    @IBOutlet weak var outlawHitPoints: UITextField!
    
    var sheriff = Person()
    var outlaw = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sheriffHitPoints.text = String(sheriff.hitPoints)
        outlawHitPoints.text = String(outlaw.hitPoints)
        
    }
    
    @IBAction func shootButton(sender: UIButton) {
        if sender.tag == 0 {
            outlaw.hitPoints -= sheriff.shoot()
        } else {
            sheriff.hitPoints -= outlaw.shoot()
        }
        
        sheriffHitPoints.text = String(sheriff.hitPoints)
        outlawHitPoints.text = String(outlaw.hitPoints)
        
        let title = "Game Over"
        
        if let result = Int(sheriffHitPoints.text!) where result <= 0 {
           let messageText = "The sheriff died."
           myAlert(title, message: messageText)
        } else if let result = Int(outlawHitPoints.text!) where result <= 0 {
            let messageText = "The outlaw died."
             myAlert(title, message: messageText)
        }
    }
    
    func myAlert (title: String, message: String) {
        
      let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
      let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
        // ...
      }
    
      alertController.addAction(OKAction)
    
      self.presentViewController(alertController, animated: true) {
      // ...
      }
    }

}

