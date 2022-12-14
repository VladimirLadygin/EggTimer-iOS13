//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = [ "Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondRemaining = 60
    
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
      let hardness = sender.currentTitle! //Soft, Medium, Hard
        
        timer.invalidate()
        
        secondRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondRemaining > 0 {
            print("\(secondRemaining) seconds")
            secondRemaining -= 1
                        
        }
    }
}
