//
//  UserTextViewController.swift
//  HW 2.4
//
//  Created by Евгений on 20.04.2024.
//

import UIKit

class UserTextViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = user.person.bio
    }
    

    

}
