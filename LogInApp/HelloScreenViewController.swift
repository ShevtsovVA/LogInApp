//
//  HelloScreenViewController.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 30.09.2021.
//

import UIKit

class HelloScreenViewController: UIViewController {
  
    @IBOutlet weak var helloWordLabel: UILabel!
    
    var helloLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let backGrounGradient = CAGradientLayer ()
//        backGrounGradient.frame = view.bounds
//        backGrounGradient.colors = [
//            UIColor.systemCyan.cgColor,
//            UIColor.systemYellow.cgColor
//        ]
//        backGrounGradient.startPoint = CGPoint(x:0,y:0)
//        backGrounGradient.endPoint = CGPoint(x:1,y:1)
//        view.layer.addSublayer(backGrounGradient)
        
        helloWordLabel.text = "Hello, \(helloLabel ?? "User")"
    
    }
    


}
