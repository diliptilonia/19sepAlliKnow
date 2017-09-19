//
//  editViewController.swift
//  19sepAlliKnow
//
//  Created by francois buisson on 19/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit
import UserNotifications

class editViewController: UIViewController {
    
    @IBOutlet weak var nameSaveTextFiled: UITextField!
    @IBOutlet weak var phoneNumberSaveTextFiled: UITextField!
    var saveName = ""
    var savePhoneNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameSaveTextFiled.text = saveName
        phoneNumberSaveTextFiled.text = savePhoneNumber
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound, .alert, .badge]) { (didAllow, error) in
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    @IBAction func alert(_ sender: UIButton) {
        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
        let okay = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let cancle = UIAlertAction(title: "cancle", style: .destructive, handler: nil)
        alert.addAction(okay)
        alert.addAction(cancle)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func notification(_ sender: UIButton) {
        let context = UNMutableNotificationContent()
            context.body = "this is body"
            context.title = "this is title"
            context.badge = 1
            context.sound = UNNotificationSound.default()
        
        let triger = UNTimeIntervalNotificationTrigger(timeInterval: 8, repeats: false)
        let request = UNNotificationRequest(identifier: "timeDone", content: context, trigger: triger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    
    
}


















