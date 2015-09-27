//
//  ViewController.swift
//  animations
//
//  Created by Jesús Maldonado on 9/27/15.
//  Copyright © 2015 Jesus Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentImageIdx = 1
    var timer = NSTimer()
    
    @IBOutlet var animationButton: UIButton!
    @IBAction func pauseOrContinueAnimation(sender: AnyObject) {
        if timer.valid {
            timer.invalidate()
            animationButton.setTitle("Continue Animation", forState: UIControlState.Normal)
        } else {
            fireTimer()
            animationButton.setTitle("Stop Animation", forState: UIControlState.Normal)
        }
    }
    
    func fireTimer() {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "animate", userInfo: nil, repeats: true)
    }
    
    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fireTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func animate() {
        if currentImageIdx < 12 {
            currentImageIdx++
        } else {
            currentImageIdx = 1
        }
        image.image = UIImage(named: "ys\(currentImageIdx).png")
    }
    
    
    /*
    override func viewDidLayoutSubviews() {
        image.center = CGPointMake(image.center.x - 400, image.center.y)
        image.alpha = 0
        image.frame = CGRectMake(100, 20, 0, 0)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            self.image.center = CGPointMake(self.image.center.x + 400, self.image.center.y)
            self.image.alpha = 1
            self.image.frame = CGRectMake(100, 20, 100, 200)
        })
    }
    */


}

