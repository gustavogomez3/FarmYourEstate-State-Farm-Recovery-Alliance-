//
//  EventTableViewController.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/30/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    var eventArray:[String] = ["Collision", "Comprehensive", "Liability", "Car Rental/Travel","Uninsured MV","UnderInsured Motor Vehicle","Medical Payments", "Emergency Road Service", "Rideshare Driver Coverage"]
    
    var star : UIImage?

    let rowHEIGHT = 90.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        star = UIImage(named: "star")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return eventArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "eventID", for: indexPath) as! EventViewCell
        cell.textLabel?.text = eventArray[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Marker Felt", size: 18.0)
        
        if (indexPath.row == 1){
            
            cell.imageView?.image = star
        }
        if (indexPath.row  == 4 ){
            cell.imageView?.image = star
        }
        if (indexPath.row == 6){
            
            cell.imageView?.image = star
        }
        
        
//        cell.
        // Configure the cell...
        
        
        print("\(eventArray[indexPath.row])")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row == 0){
            //perform segue with collision text passed to destination.
            self.performSegue(withIdentifier: "rewardsSegue", sender: self)
        }
        if (indexPath.row == 1){
            //perform segue with comprehensive text passed to destination.
            self.performSegue(withIdentifier: "rewardsSegue", sender: self)
        }
        if (indexPath.row == 2){
            //perform segue with Liability text passed to destination.
            self.performSegue(withIdentifier: "rewardsSegue", sender: self)
        }
        else if (indexPath.row > 2){
            //perform segue with car Renta text passed to destination.... etc...
            self.performSegue(withIdentifier: "rewardsSegue", sender: self)
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        
        
    }

    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return CGFloat(rowHEIGHT)
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
