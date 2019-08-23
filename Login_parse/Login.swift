//
//  Login.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Parse

class Login: UIViewController {
    
    @IBOutlet var login_username: UITextField!
    
    @IBOutlet var login_password: UITextField!
    
    @IBOutlet var loginbtnoutlet: UIButton!
    
    var username : String!
    var password : String!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        if login_username.hasText && login_password.hasText {
            
            username = login_username.text
            password = login_password.text
          
            PFUser.logInWithUsername(inBackground: username!, password: password!) { (user, error) in
                
                if let error = error as NSError? {
                    
                    let errorstring = error.userInfo["error"] as? NSString
                    
                    
                self.popalert(message: errorstring! as String, title: "ERROR")
                   
                    sender.pulsate()
                    
                    
                }else {
                    
                    self.login_username.text = ""
                    self.login_password.text = ""
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfilePageid") as? ProfilePage
                    self.navigationController?.pushViewController(vc!, animated: true)
                    
                    
                    
                }
            }
            
        }
        else {
            sender.shake()
        }
        
    }
    
   
}
