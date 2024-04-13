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
    
    private let user = "111"
    private let password = "222"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true) //  Не смог сделать, списал, даже в интернете не нашёл инфу
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard usernameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "wrong login or password",
                message: "enter correct information",
                textField: passwordTextField // подсмотрел, как указать то, что очищаем
            )
            return false
            }
        return true
    }
    
    @IBAction func forgotPasswordOrLogin(_ sender: UIButton) {
        
        switch sender {
        case forgotUsername:
            showAlert(title: "Bruh", message: "Your login is \(user)")
        default:
            showAlert(title: "Bruh", message: "Your password is \(password)")
        }
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    

    private func showAlert(title: String, message: String, textField: UITextField? = nil) { // тоже подсмотрел, как указать то, что очищаем
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

