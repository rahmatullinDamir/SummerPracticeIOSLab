//
//  ViewController.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 1.07.24.
//

import UIKit

class ViewController: UIViewController {
    
    var authInfo: Dictionary<String?, String?> = ["Admin":"Admin", "Damir":"Damir"]
    @IBOutlet weak var loginTextlable: UITextField!
    @IBOutlet weak var passwordTextlable: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let underlineLayerLogin = CALayer()
        underlineLayerLogin.frame = CGRect(x: 0, y: loginTextlable.frame.height - 1, width: loginTextlable.frame.width, height: 1)
        underlineLayerLogin.backgroundColor = UIColor.gray.cgColor
        
        let underlineLayerPassword = CALayer()
        underlineLayerPassword.frame = CGRect(x: 0, y: passwordTextlable.frame.height - 1, width: loginTextlable.frame.width, height: 1)
        underlineLayerPassword.backgroundColor = UIColor.gray.cgColor

        loginTextlable.layer.addSublayer(underlineLayerLogin)
        passwordTextlable.layer.addSublayer(underlineLayerPassword)
        
    }
    

    @IBOutlet weak var authFaildLable: UILabel!
    @IBAction func buttonOnClick(_ sender: Any) {
        if authInfo[loginTextlable.text] == passwordTextlable.text {
            performSegue(withIdentifier: "auth", sender: self)
        }
        else {
            authFaildLable.text = "Неверный логин или пароль :("
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "auth" {
            if let destVC = segue.destination as? UserProfileViewController {
                destVC.login = loginTextlable.text
                destVC.birthday = "20 april 2003"
                destVC.mail = "alexey123@gmail.com"
            }
        }
    }
    
}

