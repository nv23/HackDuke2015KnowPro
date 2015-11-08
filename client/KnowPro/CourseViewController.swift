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
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let dequeued: AnyObject = tableView.dequeueReusableCellWithIdentifier("CourseCell", forIndexPath: indexPath)
        
        let course_cell = dequeued as! UITableViewCell
        
        print("here");
        
        course_cell.textLabel?.text = courses[indexPath.row]
        
        course_cell.backgroundColor = UIColor(red: 1, green: 0.9, blue: 0.8, alpha: 1)
        
        
        return course_cell
    }

    
}