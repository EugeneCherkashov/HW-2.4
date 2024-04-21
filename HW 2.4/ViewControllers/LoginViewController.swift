//
//  ViewController.swift
//  HW 2.4
//
//  Created by Евгений on 13.04.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? TabBarController
        tabBarController?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTextField.text == user.login,
              passwordTextField.text == user.password else {
            showAlert(
                title: "Wrong login or password",
                message: "Enter correct information",
                textField: passwordTextField
            )
            return false
            }
        return true
    }
    
    @IBAction func forgotPasswordOrLogin(_ sender: UIButton) {
        
        switch sender {
        case forgotUsername:
            showAlert(title: "Bruh", message: "Your login is \(user.login)")
        default:
            showAlert(title: "Bruh", message: "Your password is \(user.password)")
        }
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    

    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

