//
//  ViewController.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginContainer: UIView!
    @IBOutlet var registerContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        
        
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.5) {
            self.loginContainer.alpha = 1
            self.registerContainer.alpha = 0
            }
            
        }
        else {
            UIView.animate(withDuration: 0.5) {
                self.registerContainer.alpha = 1
                self.loginContainer.alpha = 0
            }
        }
        
        
    }
    
}

// 1. add pod 'parse' in the pod file
//2. import parse in the swift pages
//3. add the required codes and functions in app delegate
//4. go to the back4app web site,
//5. click on MyApps options on the site from there create a new project
//6. click on DashBoard   and select server settings -> Core Setting you will get th eclient id and application id
//7. go back to MyApps and refresh the web page, if you find a class named Installation you are ready to use the server
