//
//  ExtensionViewController.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 8/3/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

extension UIViewController {
    
    //MARK:- Alert Action
    func displayAlert(title : String, message : String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
       
        present(alert, animated: true, completion: nil)
        
    }
}
