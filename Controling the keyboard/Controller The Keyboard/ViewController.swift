//
//  ViewController.swift
//  Controller The Keyboard
//
//  Created by Dion Yang on 4/16/16.
//  Copyright © 2016 Dion Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var textField: UITextField!
    @IBOutlet var labelElement: UILabel!

    @IBAction func actionButton(sender: AnyObject) {
        labelElement.text = textField.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
//        self.view.endEditing(true)
//    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }

}

