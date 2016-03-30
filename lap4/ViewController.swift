//
//  ViewController.swift
//  lap4
//
//  Created by mac on 3/30/16.
//  Copyright © 2016 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    
    var centerY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closePositionY = trayView.center.y
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var openPositionY: CGFloat = 300
    var closePositionY: CGFloat = 400
    
    @IBAction func onTap(sender: AnyObject) {
        if trayView.center.y == closePositionY {
            // move to open position
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.trayView.center.y = self.openPositionY
            })
        } else {
            // move to close position
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.trayView.center.y = self.closePositionY
            })
        }
    }
    
    @IBAction func onDragTray(sender: UIPanGestureRecognizer) {
        
        let point = sender.locationInView(view)
        let translation = sender.translationInView(view)
        
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            centerY = trayView.center.y
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
            trayView.center.y = centerY + translation.y
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }

}

