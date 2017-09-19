//
//  gestureViewController.swift
//  19sepAlliKnow
//
//  Created by francois buisson on 19/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class gestureViewController: UIViewController {

    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var swipeView: UIView!
    @IBOutlet weak var panView: UIView!
    @IBOutlet weak var lognPress: UIView!
    @IBOutlet weak var rotationView: UIView!
    @IBOutlet weak var pinchView: UIView!
   
    @IBOutlet weak var currentGesture: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tap Gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapHandler(gesture:)))
            tapGesture.numberOfTapsRequired = 2
            tapView.addGestureRecognizer(tapGesture)
        
        // swipe gesture
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(gesture:)))
            swipeGesture.direction = .left
            swipeView.addGestureRecognizer(swipeGesture)
        
        
    }
    
    @objc func tapHandler(gesture: UITapGestureRecognizer) {
        currentGesture.text = "Double tap"
    }

    @objc func handleSwipe(gesture: UISwipeGestureRecognizer) {
        print("swipe left")
    }
    
    
    
    
    

}
