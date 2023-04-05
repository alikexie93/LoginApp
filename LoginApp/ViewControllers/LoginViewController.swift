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
    
    private let info = User.getUser()
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 12
        usernameTF.text = info.login
        passwordTF.text = info.password
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.user = info.login
//        welcomeVC.person = info.person.name
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func loginButtonTapped() {
        guard usernameTF.text == info.login, passwordTF.text == info.password else {
            showAlert(
                title: "Login or password is incorrect",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        
    }
    
    @IBAction func forgotRegisterDataTapped(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!",message: "Your username is: Alexey")
            : showAlert(title: "Oops!",message: "Your username is: Password")
    }
    
    //MARK: - Private method
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

