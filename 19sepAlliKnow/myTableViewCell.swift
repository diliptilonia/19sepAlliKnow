//
//  myTableViewCell.swift
//  19sepAlliKnow
//
//  Created by francois buisson on 19/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myContact: UILabel!
    @IBOutlet weak var myContactPhoneNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
