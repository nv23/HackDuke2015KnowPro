//
//  LessonPlayViewController.swift
//  KnowPro
//
//  Created by Tian Chan Dong on 11/8/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class LessonPlayViewController: UIViewController{
    
    var lesson : LessonContent!
    @IBOutlet var webView : UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.allowsInlineMediaPlayback = true
        self.webView.mediaPlaybackRequiresUserAction = false
        
        let embedString = lesson.VideoURL
        
        self.webView.loadHTMLString(embedString, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
