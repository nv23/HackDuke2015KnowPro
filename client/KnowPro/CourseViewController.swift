//
//  CourseViewController.swift
//  KnowPro
//
//  Created by Anika RD on 11/7/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import Foundation
import UIKit

class CourseViewController: UITableViewController {
    
    var courses = ["ECE123", "CS234", "Math345"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseCell")!;
        
        cell.textLabel?.text = courses[indexPath.row]
        
        return cell
        
    }
    
}