//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Dion Yang on 4/15/16.
//  Copyright © 2016 Dion Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSUserDefaults.standardUserDefaults().setObject("Dion", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name") as! NSString
        
        print(userName)
        
        let arr = [1,2,3,4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        
        //print(returnedArray)
        
        for x in returnedArray {
            print(x)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

