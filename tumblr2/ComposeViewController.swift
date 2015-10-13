//
//  ComposeViewController.swift
//  tumblr2
//
//  Created by Margaret Bignell on 10/12/15.
//  Copyright © 2015 maggled. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    
    @IBOutlet var wholeView: UIView!
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    @IBOutlet weak var nevermindButton: UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

    
    var isPresenting: Bool = true
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresenting = true
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        print("animating transition")
        let containerView = transitionContext.containerView()
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        
        if (isPresenting) {
            containerView!.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                toViewController.view.alpha = 0.98
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
          
            UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.textButton.frame.origin.y = 140

                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.photoButton.frame.origin.y = 140
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.quoteButton.frame.origin.y = 140
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.linkButton.frame.origin.y = 270
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.chatButton.frame.origin.y = 270
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.35, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.videoButton.frame.origin.y = 270
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.nevermindButton.frame.origin.y = 514
                
                }, completion: nil)
        } else {
        
            UIView.animateWithDuration(0.3, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.textButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.photoButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.quoteButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.linkButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.chatButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.35, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.videoButton.frame.origin.y = -120
                
                }, completion: nil)
            UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: [], animations: { () -> Void in
                self.nevermindButton.frame.origin.y = 800
                
                }, completion: nil)
            UIView.animateWithDuration(0.4, delay: 0.3, options: [], animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
                }
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.alpha = 0.8
        
        textButton.frame.origin.y = view.frame.height
        photoButton.frame.origin.y = view.frame.height
        quoteButton.frame.origin.y = view.frame.height
        linkButton.frame.origin.y = view.frame.height
        chatButton.frame.origin.y = view.frame.height
        videoButton.frame.origin.y = view.frame.height
        nevermindButton.frame.origin.y = 600
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onNevermindPress(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
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
