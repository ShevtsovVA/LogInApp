//
//  UserInfoViewController.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 10.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var nameSurname: UINavigationItem!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameSurname.title = user.person.fullName


    }
    

 

}
