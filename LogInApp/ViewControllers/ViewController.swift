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
    
    private let userName = "Murka"
    private let password = "123"

    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTF.text != userName || passwordTF.text != password {
            alert (title: "So sorry", message: "Wrong login or password")
        } else {
            performSegue(withIdentifier: "settingsSegue", sender: nil)
        }
    }
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
       alert(title: "Forgot your name?", message: "Your name is \(userName)")
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
      alert(title: "Forgot your password?", message: "Your password is \(password)")
    }
    
    func alert (title:String,message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloScreenVC = segue.destination as? HelloScreenViewController else {return}
        helloScreenVC.helloLabel = userName
        //userNameTF.text
    }
    
    
}

