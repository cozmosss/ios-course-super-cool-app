//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Mark Kramer on 6/15/15.
//  Copyright (c) 2015 Mark Kramer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtGuessedAmt: UITextField!
    
    @IBOutlet var lblErrorTxt: UILabel!
    
    @IBAction func btnActualAmount(sender: AnyObject) {
        
        var actualAmt = arc4random_uniform(5) + 1
        
        println(actualAmt)
        
        if txtGuessedAmt.text.toInt() < 0 || txtGuessedAmt.text.toInt() > 6 {
            lblErrorTxt.text = "Please enter a valid number"
        
        } else {
            if txtGuessedAmt.text.toInt() == Int(actualAmt) {
                lblErrorTxt.text = "Congratulations, you guessed right"
                
            } else {
                lblErrorTxt.text = "Please try again"
                
            }
            
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

