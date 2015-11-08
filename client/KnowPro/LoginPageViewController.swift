//
//  LoginPageViewController.swift
//  KnowPro
//
//  Created by Cherish.R on 11/3/15.
//  Copyright © 2015 RanZhou. All rights reserved.
//

/************ This VC is responsible for the loginPage view *************/

// MARK: information goes from here

// Background color RGB: 102/204/102, CMYK: 59%/0/80%/0

import UIKit
/// login page :)
class LoginPageViewController: UIViewController {
    /// test Documentation
    
    @IBOutlet weak var wrongInfo: UILabel!
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wrongInfo.hidden = true
        // MARK: Background Layer
                
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TODO: - sending password
    @IBAction func resetPassword(sender: AnyObject) {
        let alert = UIAlertController(title: "Password Reset", message: "A temperary password has been sent to your Email address", preferredStyle: UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel) { (ACTION) -> Void in }
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true) { () -> Void in }
        // code for sending password
    }
    
    // TODO: - Login Checking
    @IBAction func loginAction(sender: AnyObject) {
        // if username/password is not found
        if(true){
            wrongInfo.text = "Information not found, try again"
            wrongInfo.hidden = false
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
