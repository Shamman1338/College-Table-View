//
//  ViewController.swift
//  College Table View
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Shamman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var colleges = ["Michigan", "High Point", "Elon"]

    override func viewDidLoad() {
        super.viewDidLoad()
 


}
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
            cell.textLabel?.text = colleges[indexPath.row].name
            return cell
            
            
        }
    }

