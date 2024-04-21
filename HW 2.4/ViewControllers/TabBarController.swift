//
//  TabBarController.swift
//  HW 2.4
//
//  Created by Евгений on 20.04.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        
        transferData()
    }
    
    private func transferData() {
        viewControllers?.forEach { viewController in
            if let welcomeVS = viewController as? WelcomeViewController {
                welcomeVS.user = user
            } else if let navigationController = viewController as? UINavigationController {
                let userInfoVC = navigationController.topViewController as? UserInfoViewController
                userInfoVC?.user = user
            }
        }
    }
}
