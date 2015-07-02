//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Shikhar Vats on 5/29/15.
//  Copyright (c) 2015 IceAuror. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var Label2: UILabel!
    
    @IBAction func Button(sender: AnyObject) {
    
    println(textfield.text)
        
        var randomnumber = arc4random_uniform(6)
        println(" Guessed number \(randomnumber)")
        var guessnumber = textfield.text.toInt()
        
        if guessnumber != nil {
            
            if guessnumber > 6 {
                Label.text = " Enter a valid number between 0 and 5 "
            }else {
                if guessnumber != Int(randomnumber) {
                    Label.text = " You suck !!! "
                    Label2.text = " "
                } else {
                    Label.text = " Awesome!! You got it right!:)"
        
                    Label2.text = " ..but you still suck "
                }
            }
            
        }else {
            Label.text = " Enter a valid number between 0 and 5 "
        }
        
        
    }
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

