//
//  UserProfileViewController.swift
//  secondHomework
//
//  Created by Damir Rakhmatullin on 1.07.24.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    var login: String?
    var birthday: String?
    var mail: String?
    
    @IBOutlet weak var loginTextEdit: UITextField!
    @IBOutlet weak var mailTextEdit: UITextField!
    @IBOutlet weak var birthdayDateTextEdit: UITextField!
    @IBOutlet weak var circleBackground: UIView!
    
//    func config(login: String, birthday: String, mail: String) {
//        
////        guard let userLogin = UserDefaults.standard.string(forKey: "savedTextFieldText")
////        guard let birthdayDate = UserDefaults.value(forKey: "dateOfBirth") as? String else {return}
////        guard let email = UserDefaults.value(forKey: "email") as? String else {return}
//        
//        self.login = UserDefaults.standard.string(forKey: "login")
//        self.birthday = UserDefaults.standard.string(forKey: "dateOfBirth")
//        self.mail = UserDefaults.standard.string(forKey: "email")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleBackground.layer.cornerRadius = min(circleBackground.bounds.width, circleBackground.bounds.height) / 2
        circleBackground.layer.masksToBounds = true
        
    
        loginTextEdit.text = UserDefaults.standard.string(forKey: "login")
        mailTextEdit.text = UserDefaults.standard.string(forKey: "email")
        birthdayDateTextEdit.text = UserDefaults.standard.string(forKey: "dateOfBirth")
            
         
        // Do any additional setup after loading the view.
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
