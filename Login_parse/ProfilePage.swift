//
//  ProfilePage.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Parse

class ProfilePage: UIViewController {

    @IBOutlet var logoutbtnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       self.logoutbtnoutlet.layer.borderWidth = 2
        
    }
    
    func loadLoginScreen(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ViewControllerid") as! ViewController
        self.present(viewController, animated: true, completion: nil)
    }
    

   
    @IBAction func logOutAction(_ sender: UIButton) {
    
      let va = UIViewController.displaySpinner(onView: self.view)
        
        PFUser.logOutInBackground { (error: Error?) in
            UIViewController.removeSpinner(spinner: va)
            if (error == nil){
                self.loadLoginScreen()
            }else{
                if let descrip = error?.localizedDescription{
                    self.popalert(message: "Successfully logged out", title: "Log-out success")
                }else{
                    self.popalert(message: "error logging out", title: "Error")
                }
                
            }
        }
    
}
}
