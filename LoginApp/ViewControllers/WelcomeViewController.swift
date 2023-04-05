//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 02.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    @IBOutlet var personLabel: UILabel!
    
//    не отображаются данные 
//    var user = ""
//    var person = ""
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 12
        welcomeLabel.text = "Привет, \(User.getUser().login)!"
        personLabel.text = "Меня зовут \(User.getUser().person.name)"
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let gradient = CAGradientLayer()
        
        gradient.colors = [UIColor.systemCyan.cgColor, UIColor.systemMint.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.frame = CGRect(
            x: 0.0,
            y: 0.0,
            width: view.frame.size.width,
            height: view.frame.size.height
        )
        
        view.layer.insertSublayer(gradient, at: 0)
    }
}
