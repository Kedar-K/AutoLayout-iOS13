//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        var rand_one = Int.random(in: 0...5)
        var rand_two = Int.random(in: 0...5)

        
        let imageSubstitute =   ["One","Two","Three","Four","Five","Six"]
        
//        diceImageView1.image = UIImage(named: "Dice\(imageSubstitute[rand_one])")
//        diceImageView2.image = UIImage(named: "Dice\(imageSubstitute[rand_two])")
        
        // We can also use the randomElemetnt to get the random value from the array or use the method above.
        diceImageView1.image = UIImage(named: "Dice\(imageSubstitute.randomElement() ?? "One")")
        diceImageView2.image = UIImage(named: "Dice\(imageSubstitute.randomElement() ?? "One")")
        
    }
    
}

