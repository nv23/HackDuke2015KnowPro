//
//  LessonOutlineViewController.swift
//  KnowPro
//
//  Created by Anika RD on 11/7/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import Foundation
import UIKit

class LessonOutlineViewController: UITableViewController {
    
    var lessons = ["L1", "L2", "L3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessons.count
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let dequeued: AnyObject = tableView.dequeueReusableCellWithIdentifier("LessonCell", forIndexPath: indexPath)
        
        let l_cell = dequeued as! UITableViewCell
        
        l_cell.textLabel?.text = lessons[indexPath.row]
        
        l_cell.backgroundColor = UIColor(red: 1, green: 0.9, blue: 0.8, alpha: 1)
        
        
        return l_cell
    }
    
}