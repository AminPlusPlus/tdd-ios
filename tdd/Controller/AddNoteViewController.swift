//
//  AddTaskViewController.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 8/3/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    var delegate : TodoDelegate?
    
    @IBOutlet weak var titleTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addNote(sender : UIButton) {
        
        guard let title = titleTextField.text, !title.isEmpty else {
            
            displayAlert(title: "OOPS!", message: "Title should not be empty!")
            return
        }
        
        let note = Note(title: title)
        delegate?.addNote(note: note)
        
        navigationController?.popToRootViewController(animated: true)
        
    
    }
    


}
