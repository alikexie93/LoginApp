//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 02.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var userLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var usernameLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 12
        userLabel.text = usernameLabel
    }
}
