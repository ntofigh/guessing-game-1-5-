//
//  ViewController.swift
//  guessing game
//
//  Created by Anar on 5/24/16.
//  Copyright © 2016 Anar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessText: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func submitGuess(sender: AnyObject) {
        
        let fingers = Int(arc4random_uniform(5) + 1)
        let guess = Int(guessText.text!)

        if guess == fingers {
            answer.text = "Good guess! I had \(fingers) fingers."
            
        } else {
            answer.text = "Sorry, the correct answer was \(fingers)."
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

