//
//  HelloScreenViewController.swift
//  LogInApp
//
//  Created by Виктор Шевцов on 30.09.2021.
//

import UIKit

class HelloScreenViewController: UIViewController {
  
    @IBOutlet weak var helloWordLabel: UILabel!
    
    
    var user: User!
    
    let firstColor = UIColor (red: 210/255, green: 109/255, blue: 128/255, alpha: 1)
    let secondColor = UIColor (red: 107/255, green: 148/255, blue: 230/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient(topColor: firstColor, bottomColor: secondColor)
        helloWordLabel.text = "Hello, \(user.person.name)"
       
    
    }
}
// MARK: - Set background color
extension UIView {
    func addVerticalGradient (topColor: UIColor, bottomColor: UIColor) {
            let backGrounGradient = CAGradientLayer ()
            backGrounGradient.frame = bounds
            backGrounGradient.colors = [
                topColor.cgColor,
                bottomColor.cgColor
            ]
            backGrounGradient.startPoint = CGPoint(x:0,y:0)
            backGrounGradient.endPoint = CGPoint(x:1,y:1)
        layer.insertSublayer(backGrounGradient, at: 0)
    }


}
