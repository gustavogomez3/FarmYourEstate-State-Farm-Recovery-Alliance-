//
//  EventStatsViewController.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/31/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class EventStatsViewController: UIViewController {

    @IBOutlet var seedCountLabel: UILabel!
    @IBOutlet var thanksBtn: UIButton!
    var thanksAlert : UIAlertController?
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var percentLabel: UILabel!
    
    let MAXTIME : Float = 10.0
    var currentTime : Float = 0.0
    var currentSeedCount = 100
    var concatenate = 15
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.thanksBtn.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //unhide the button..
        self.thanksBtn.isHidden = false
    }
    
   
    
    @IBAction func thanksButton(_ sender: Any) {
        //add points to user profile.
        //Prompt user thanks for Using our Recovery steps.
        thanksAlert = UIAlertController(title: "You're Appreciated!", message: "We appreciate your business here at State Farm. Congratulations, you have earned 15 seeds to assist you in growing in your Recovery.", preferredStyle: .alert)
        
        thanksAlert!.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        self.startProgressing()
        self.present(thanksAlert!, animated: true)
    }
    
    func startProgressing(){
      
        let newCount = currentSeedCount + concatenate
        
        seedCountLabel.text = "\(newCount)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //what to do when the user touches the screen.
//        self.thanksBtn.isHidden = false
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
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
