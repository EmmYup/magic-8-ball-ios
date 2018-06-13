//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Emmanuel Yupit on 6/13/18.
//  Copyright © 2018 Emmanuel Yupit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballImages : Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateImage() {
        imageView.image = UIImage(named: ballImages[Int(arc4random_uniform(4))])
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
}

