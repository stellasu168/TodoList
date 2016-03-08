//
//  FirstViewController.swift
//  TodoList
//
//  Created by Stella Su on 2/13/16.
//  Copyright © 2016 Million Stars, LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    // This only call once
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    // This calls every time the view comes back to this view
    override func viewDidAppear(animated: Bool) {
        myTableView.reloadData()
    }

    // Same function, but different signature.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myItemList.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let myCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        myCell.textLabel?.text = myItemList[indexPath.row]
        return myCell
    }



    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
    }
    
    
    
    
    
    
    
    
    
    
    
} // End of FirstViewController

