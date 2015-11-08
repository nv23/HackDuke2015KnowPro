//
//  LessonPlayViewController.swift
//  KnowPro
//
//  Created by Tian Chan Dong on 11/8/15.
//  Copyright © 2015 Tian Chan Dong. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class LessonPlayViewController: UIViewController, YTPlayerViewDelegate{
    
    var lesson : LessonContent!
    @IBOutlet var webView : UIWebView!
    
    @IBOutlet var playerView : YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.allowsInlineMediaPlayback = true
        self.webView.mediaPlaybackRequiresUserAction = false
        
        let embedString = "<iframe width=\"420\" height=\"315\" src=\"https://www.youtube.com/embed/hT6wXEhmXEU\" frameborder=\"0\" allowfullscreen></iframe>"
        
        self.webView.loadHTMLString(embedString, baseURL: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
