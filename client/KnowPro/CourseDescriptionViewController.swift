//
//  CourseDescriptionViewController.swift
//  KnowPro
//
//  Created by Tian Chan Dong on 11/7/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import UIKit

class CourseDescriptionViewController: UIViewController {
    
    @IBOutlet weak var CourseName : UILabel!
    
    var selectedCourse = CourseContent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedCourse.CourseName)
        self.CourseName.text = selectedCourse.CourseName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
