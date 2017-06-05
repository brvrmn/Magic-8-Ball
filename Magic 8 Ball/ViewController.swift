//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by MV Braverman on 6/5/17.
//  Copyright © 2017 brvrmn.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        ballImageView.isHidden = true
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        askAnything()
    }
    
    func askAnything() {
        
        ballImageView.isHidden = false
        randomBallNumber = Int(arc4random_uniform(5)) + 1
        ballImageView.image = UIImage(named: "ball\(randomBallNumber)")
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        askAnything()
    }

}

