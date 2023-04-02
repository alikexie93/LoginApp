//
//  ViewController.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 02.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 12
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.usernameLabel = usernameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonTapped() {
        guard let usernameText = usernameTF.text, !usernameText.isEmpty else {
            showAlert(
                withTitle: "Username textfield is empty",
                andMessage: "Please, enter your username"
            )
            return
        }
        
        guard let passwordText = passwordTF.text, !passwordText.isEmpty else {
            showAlert(
                withTitle: "Password textfield is empty",
                andMessage: "Please, enter your password"
            )
            return
        }
        
        let correctUsername = "Swift"
        let isUsernameValid = NSPredicate(format: "SELF MATCHES %@", correctUsername)
            .evaluate(with: usernameText)
        
        let correctPassword = "Password"
        let isPasswordValid = NSPredicate(format: "SELF MATCHES %@", correctPassword)
            .evaluate(with: passwordText)
        
        if !isUsernameValid {
            showAlert(
                withTitle: "Login or password is incorrect",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
        
        if !isPasswordValid {
            showAlert(
                withTitle: "Login or password is incorrect",
                andMessage: "Please, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func forgotUsernameTapped() {
        showAlert(
            withTitle: "Here is your username",
            andMessage: "Your username is: Swift"
        )
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(
            withTitle: "Here is your password",
            andMessage: "Your password is: Password"
        )
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

