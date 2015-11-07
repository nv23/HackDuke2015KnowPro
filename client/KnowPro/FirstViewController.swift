//
//  FirstViewController.swift
//  KnowPro
//
//  Created by Cherish.R on 10/30/15.
//  Copyright © 2015 RanZhou. All rights reserved.
//

import UIKit

/*
let courses = [
["name":"Swift","pic":"logo2_Fotor"],
["name":"OC","pic":"logo2_Fotor"],
["name":"Java","pic":"logo2_Fotor"],
["name":"PHP","pic":"logo2_Fotor"],
["name":"JS","pic":"logo2_Fotor"],
["name":"HTML","pic":"logo2_Fotor"]
]
*/

class FirstViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return courses.count
        return 6
    }
    
    // TODO: - Image, Name of course for cell
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let myCell = collectionView.dequeueReusableCellWithReuseIdentifier("cvcell", forIndexPath: indexPath) as UICollectionViewCell
        myCell.backgroundColor = UIColor.whiteColor()
        
        let myImage = UIImageView(image: UIImage(named: "logo2_Fotor")) //image: courses[indexPath.item]["pic"]!
        myImage.frame = myCell.bounds
        
        let myLabel = UILabel(frame: CGRectMake(0, 5, myCell.bounds.size.width, myCell.bounds.size.height))
        myLabel.textAlignment = NSTextAlignment.Center
        //myLabel.font = UIFont
        myLabel.adjustsFontSizeToFitWidth = true
        myLabel.text = "test course"//name
        myLabel.textColor = UIColor.greenColor()
        myCell.addSubview(myImage)
        myCell.addSubview(myLabel)
        
        return myCell
    }
    
    // MARK: - Cell Size
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let size: CGFloat = 70
        return CGSizeMake(size, size)
    }

}

