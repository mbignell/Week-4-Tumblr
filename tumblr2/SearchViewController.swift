//
//  SearchViewController.swift
//  tumblr2
//
//  Created by Margaret Bignell on 10/12/15.
//  Copyright © 2015 maggled. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var loadingImage: UIImageView!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    @IBOutlet weak var searchFeed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        loadingImage.alpha=1
        searchFeed.alpha = 0

        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        loadingImage.image = animatedImage
        UIView.animateWithDuration(0.2, delay: 1.5, options: [], animations: { () -> Void in
            self.loadingImage.alpha = 0
            }, completion: nil)

        UIView.animateWithDuration(0.4, delay: 1.6, options: [], animations: { () -> Void in
            self.searchFeed.alpha = 1
            }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
