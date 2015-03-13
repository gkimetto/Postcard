//
//  ViewController.swift
//  Postcard
//
//  Created by Gilbert Kimetto on 2/18/15.
//  Copyright (c) 2015 Gilbert Kimetto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageSecondLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
   
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Adding a comment here to test commits
    
    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        messageSecondLabel.hidden=false
        messageSecondLabel.text=enterNameTextField.text
        messageSecondLabel.textColor=UIColor.blueColor()
        enterNameTextField.hidden=true
        
    }

}

