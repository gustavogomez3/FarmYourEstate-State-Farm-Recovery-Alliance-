//
//  ViewController.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/30/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var alert : UIAlertController? = nil
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding action sheet for password recovery
       
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        
        let optionMenu = UIAlertController(title: nil, message: "Choose Recovery Option", preferredStyle: .actionSheet)
        
        let emailAction = UIAlertAction(title: "Email Confirmation", style: .default)
        let phoneAction = UIAlertAction(title: "Phone Confirmation", style: .default)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        optionMenu.addAction(emailAction)
        optionMenu.addAction(phoneAction)
        optionMenu.addAction(cancelAction)
        
        
        self.present(optionMenu, animated: true, completion: nil)
        //alert = UIAlertController(title: "Login success!", message: "Select the unexpected events that you want tailored to your profile.", preferredStyle: .alert)
        
        //   alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        //alert!.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        
        //self.present(alert!, animated: true)
    }
    
    @IBAction func LogInButtonPress(_ sender: Any) {
        //Perform transition
        self.performSegue(withIdentifier: "LoginSegue", sender: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touched screen.")
        self.resignFirstResponder()
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches ended.")
    }
}

