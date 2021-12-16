//
//  UserInfoViewController.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 10.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    

    @IBOutlet weak var fullName: UINavigationItem!
    
   
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.title = user.person.fullName
    
    }
    
    @IBAction func goToImage(_ sender: UIButton) {
        performSegue(withIdentifier: "imageSegue", sender: nil)
    }

}
