//
//  ViewController.swift
//  image Animation 01
//
//  Created by D7702_10 on 2019. 3. 27..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var count = 1
    var direction = true
    // true = up
    // false = down
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = "frame\(count).png"
    }

    @IBAction func updateButtonPressed(_ sender: Any) {
        if ( count == 5 ) {
            direction = false
        } else if ( count == 1 ) {
            direction = true
        }
        
        if ( direction == true ) {
            count += 1
        } else {
            count -= 1
        }
        alienImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = "frame\(count).png"
        
    }
    
    
    
    
    
    
}

