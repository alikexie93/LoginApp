//
//  AboutViewController.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 05.04.2023.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var photoOfPet: UIImageView!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var patronymicLabel: UILabel!
    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    
    private let info = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoOfPet.layer.cornerRadius = photoOfPet.frame.height / 2
        
        surnameLabel.text = info.person.surname
        nameLabel.text = info.person.name
        patronymicLabel.text = info.person.patronymic
        nickNameLabel.text = info.person.nickName
        dateOfBirthLabel.text = info.person.dateOfBirth
    }

}
