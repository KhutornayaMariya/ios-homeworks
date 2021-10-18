//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Mariia Khutornaia on 13.10.2021.
//

import UIKit

class ProfileView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet weak var userNameTextView: UILabel!
    
    @IBOutlet weak var userFotoImageView: UIImageView!
    
    @IBOutlet weak var userBirthdayTextView: UILabel!
    
    @IBOutlet weak var userCityTextView: UILabel!
    
    @IBOutlet weak var descriptionTextView: UITextView!
}
