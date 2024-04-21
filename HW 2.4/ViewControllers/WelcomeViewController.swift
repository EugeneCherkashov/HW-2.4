//
//  WelcomeViewController.swift
//  HW 2.4
//
//  Created by Евгений on 13.04.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.login)!"
    }
}
