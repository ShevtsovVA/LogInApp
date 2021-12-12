//
//  ViewController.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User.getUserData()

    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            alert (title: "So sorry", message: "Wrong login or password")
        } else {
            performSegue(withIdentifier: "tabBarController", sender: nil)
        }
    }
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        alert(title: "Forgot your login?", message: "Your login is \(user.login)")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        alert(title: "Forgot your password?", message: "Your password is \(user.password)")
    }
    
    func alert (title:String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        viewControllers.forEach {
            if let helloVC = $0 as? HelloScreenViewController {
                helloVC.user = user
            } else if let navigationVC = $0 as? UINavigationController{
                let userVC = navigationVC.topViewController as! UserInfoViewController
                userVC.user = user
            }
        }
     
    }
    

}

