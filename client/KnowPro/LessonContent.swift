//
//  CourseMaterial.swift
//  KnowPro
//
//  Created by Tian Chan Dong on 11/7/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import UIKit

class LessonContent: NSObject {
    var Name : String
    var VideoURL : String
    var Homework : Dictionary = [String : String]()
    
    init (name : String, URL : String){
        Name = name
        VideoURL = URL
    
    }
    
}
