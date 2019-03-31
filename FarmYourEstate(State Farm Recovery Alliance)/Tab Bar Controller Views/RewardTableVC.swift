//
//  RewardTableVC.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/31/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class RewardTableVC: UITableViewController {

    var rewardArray:[String] = ["Earn 10% off your monthly subscription.","Earn 15% off your monthly subscription.","Earn 20% off your monthly subscription.","Earn 25% off your monthly subscription."]
    
    var redeemRewards:[String] = ["Redeem","Redeem","Redeem","Redeem"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
       //  self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: Any?, action: Selector?
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rewardArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rewardCell = (tableView.dequeueReusableCell(withIdentifier: "rewardCell", for: indexPath) as? RewardViewCell)!

        // Configure the cell...
        rewardCell.textLabel!.text = rewardArray[indexPath.row]
        rewardCell.textLabel?.font = UIFont(name: "Marker Felt", size: 18)
        rewardCell.descriptionLabel?.text = redeemRewards[indexPath.row]
        rewardCell.descriptionLabel?.font = UIFont(name: "Marker Felt", size: 18.0)
        
        
        return rewardCell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
