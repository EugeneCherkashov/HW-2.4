//
//  UserInfoViewController.swift
//  HW 2.4
//
//  Created by Евгений on 20.04.2024.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var programLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = imageView.frame.width / 2
        
        title = "\(user.person.name) \(user.person.surname)" //здесь я задаю тайтл для NavigaionController, но при этом он передаётся и в подпись снизу в TabBarController, как в коде сделать отдельные надписи снизу и сверху?
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        universityLabel.text = user.person.university
        programLabel.text = user.person.program
        imageView.image = UIImage(named: user.person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userTextController = segue.destination as? UserTextViewController else { return } // Как тут можно было перенести строку?
        userTextController.user = user
    }
}
