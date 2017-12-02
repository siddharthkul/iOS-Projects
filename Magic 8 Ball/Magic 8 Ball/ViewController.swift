//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Siddharth Kulkarni on 12/2/17.
//  Copyright © 2017 Siddharth Kulkarni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateBall()
        
    }
    
    func updateBall(){
        
        randomIndex = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomIndex])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
}

