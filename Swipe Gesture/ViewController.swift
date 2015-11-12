//
//  ViewController.swift
//  Swipe Gesture
//
//  Created by Ronny Soltveit on 12/11/15.
//  Copyright © 2015 Ronny Soltveit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblDirection: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipe:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipe:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "respondToSwipe:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        view.addGestureRecognizer(swipeUp)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "respondToSwipe:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        view.addGestureRecognizer(swipeLeft)
    }
    
    func respondToSwipe(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                lblDirection.text = "Right"
            case UISwipeGestureRecognizerDirection.Left:
                lblDirection.text = "Left"
            case UISwipeGestureRecognizerDirection.Up:
                lblDirection.text = "Up"
            case UISwipeGestureRecognizerDirection.Down:
                lblDirection.text = "Down"
            default:
                break
            }
        }
    }
}

