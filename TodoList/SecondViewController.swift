//
//  SecondViewController.swift
//  TodoList
//
//  Created by Stella Su on 2/13/16.
//  Copyright © 2016 Million Stars, LLC. All rights reserved.
//

import UIKit

var myItemList = [String] () // Blink array of strings

class SecondViewController: UIViewController {

    @IBOutlet weak var myItemText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addItem(sender: AnyObject) {
        // Validate the text filed
        
        // Put it on a stack --> array of strings
        
        // Clear the text field
        
        if myItemText.text?.characters.count > 0 {
            myItemList.append(myItemText.text!) // Unwrap
            myItemText.text = "" // Clear the field
            self.view.endEditing(true) // Make it not editable
            print(myItemList)
        }
        
    }

}

