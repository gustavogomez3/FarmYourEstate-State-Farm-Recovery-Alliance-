//
//  RegistrationViewController.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/30/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var desiredUsernameField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var desiredPasswordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        self.dismiss(animated: true) {
            //
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.resignFirstResponder()
    }
    
}

