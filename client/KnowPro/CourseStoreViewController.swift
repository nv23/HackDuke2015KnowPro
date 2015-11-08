//
//  CourseStoreViewController.swift
//  
//
//  Created by Tian Chan Dong on 11/7/15.
//
//

import UIKit

var NetworkingCourse = CourseContent()

class CourseStoreViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {
    
    var courses : NSMutableArray = ["art", "chemistry", "econ", "french", "history", "linear algebra", "literature", "modern biology"];
    
    
    
    @IBOutlet weak var vwCarousel: iCarousel!

    override func viewDidLoad() {
        super.viewDidLoad()
        vwCarousel.type = iCarouselType.Cylinder
        vwCarousel .reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int
    {
        return 8;
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        var itemView: UIImageView
        if (view == nil)
        {
            itemView = UIImageView(frame:CGRect(x:0, y:0, width:200, height:200))
            itemView.contentMode = .ScaleAspectFit
        }
        else
        {
            itemView = view as! UIImageView;
        }
        let name = (courses.objectAtIndex(index) as! String) + ".jpeg"
        itemView = UIImageView(frame:CGRectMake(0, 0, 100, 200))
        itemView.image = UIImage(named: name)
        itemView.contentMode = .ScaleAspectFit
        return itemView
    }
    
    func carouselItemWidth(carousel: iCarousel) -> CGFloat {
        return 240;
    }

    func carouselShouldWrap(carousel : iCarousel) -> Bool
    {
        //wrap all carousels
        return true;
    }
    
    
    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!)
    {
        if (segue.identifier == "CarouselSegue")
        {
            var viewController : CourseDescriptionViewController = segue.destinationViewController as! CourseDescriptionViewController
            //viewController.selectedImage = UIImage(named: "\(images.objectAtIndex(selectedIndex))")
        }
    }
}
