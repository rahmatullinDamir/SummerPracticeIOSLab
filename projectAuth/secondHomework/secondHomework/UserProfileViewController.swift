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
    
    func config(login: String, birthday: String, mail: String) {
        self.login = login
        self.birthday = birthday
        self.mail = mail
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circleBackground.layer.cornerRadius = min(circleBackground.bounds.width, circleBackground.bounds.height) / 2
        circleBackground.layer.masksToBounds = true
        
    
        loginTextEdit.text = login
        mailTextEdit.text = mail
        birthdayDateTextEdit.text = birthday
            
         
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
