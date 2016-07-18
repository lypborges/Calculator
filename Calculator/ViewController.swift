//
//  ViewController.swift
//  Calculator
//
//  Created by Felipe Borges Ferreira on 18/07/16.
//  Copyright © 2016 Felipe Borges Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userInTheMiddleOfThing = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userInTheMiddleOfThing {
            let textCurrentInDisplay = display.text!
            display.text = textCurrentInDisplay + digit
        } else {
            display.text = digit
        }
        
        userInTheMiddleOfThing = true
    }


    @IBAction func performOperation(sender: UIButton) {
        userInTheMiddleOfThing = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

