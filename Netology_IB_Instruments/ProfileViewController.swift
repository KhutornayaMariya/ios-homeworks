//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Mariia Khutornaia on 13.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 10, y: 10, width: view.bounds.width - 30, height: 400)
            view.addSubview(profileView)
        }

    }
}
