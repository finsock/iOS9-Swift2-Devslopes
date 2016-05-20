//
//  Person.swift
//  DuelGame
//
//  Created by Csaba Gaspar on 2016-05-19.
//  Copyright © 2016 Csaba Gaspar. All rights reserved.
//

import Foundation

class Person {
  var hitPoints = 10
    func shoot () -> Int {
        let odds = 1 + Int(arc4random_uniform(3))
        if odds == 3 {
          return 1 + Int(arc4random_uniform(3))
        } else {
            return 0
        }
    }
}
