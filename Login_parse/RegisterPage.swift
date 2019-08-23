//
//  RegisterPage.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Parse

class RegisterPage: UIViewController {
    
    
    @IBOutlet var reg_username: UITextField!
    
    @IBOutlet var reg_password: UITextField!
    
    @IBOutlet var regbtn_outlet: UIButton!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func registerAction(_ sender: UIButton) {
        
        
        if reg_username.hasText && reg_password.hasText {
          
            let username = reg_username.text
            let password = reg_password.text
            
            let user = PFUser()
            user.username = username
            user.password = password
            
            user.signUpInBackground { (success, error) in
                
                if let error = error as NSError? {
                  let errorstring = error.userInfo["error"]as? NSString
                    self.popalert(message: errorstring! as String, title: "Error")
                }
                else {
                    self.popalert(message: "Registeration Successful", title: "Success")
                    
                    self.reg_username.text = ""
                    self.reg_password.text = ""
                }
                
            }
            
        }
        
        else {
            sender.shake()
        }
        
        
    }
    
   

}
