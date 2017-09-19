//
//  ViewController.swift
//  19sepAlliKnow
//
//  Created by francois buisson on 19/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var phoneNumberTextFiled: UITextField!
    var name = ""
    var phoneNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
            nameTextFiled.text = name
            phoneNumberTextFiled.text = phoneNumber
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func editButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = segue.destination as! editViewController
        data.saveName = nameTextFiled.text!
        data.savePhoneNumber = phoneNumberTextFiled.text!
        
    }
    

}

