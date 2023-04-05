//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Алексей Филиппов on 06.04.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    private let info = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = info.person.bioOfPerson
    }
    


}
