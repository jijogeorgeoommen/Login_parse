//
//  AlertExtension.swift
//  Login_parse
//
//  Created by JIJO G OOMMEN on 23/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

extension UIViewController {

    func popalert(message : String, title : String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    
    
    
}
    

