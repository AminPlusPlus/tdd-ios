//
//  AuthViewController.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 8/3/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    @IBOutlet weak var username : UITextField!
    @IBOutlet weak var password : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK:- Sign in perform button
    @IBAction func signIn (_ sender : UIButton) {
        
        
        guard let username = username.text, username == "amin" else {
            displayAlert(title: "OOPS!", message: "Missing username or is not correct")
            return
        }
        guard let password = password.text, password == "12345" else {
            displayAlert(title: "OOPS!", message: "Missing password or is not correct")
            return
        }
        
        
        performSegue(withIdentifier: "todoIdentifier", sender: nil)
        
    }
}
