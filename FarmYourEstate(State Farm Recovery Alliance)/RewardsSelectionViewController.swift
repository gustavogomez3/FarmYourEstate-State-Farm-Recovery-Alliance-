//
//  EventSelectionVCViewController.swift
//  FarmYourEstate(State Farm Recovery Alliance)
//
//  Created by Gustavo Gomez on 3/30/19.
//  Copyright © 2019 Gustavo Gomez. All rights reserved.
//

import UIKit

class RewardsSelectionViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var rewardArray:[String] = ["1. Earn 10% off your monthly subscription.","2. Earn 15% off your monthly subscription.","3. Earn 20% off your monthly subscription.","4. Earn 25% off your monthly subscription."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self as? UITableViewDelegate
       // self.tableView.dataSource = self as? UITableViewDataSource
       /// self.tableView.dataSource = self as! UITableViewDataSource
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //appears everytime view is called.
    }
    
   
    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        
        var rewardCell =  RewardViewCell(style: .default, reuseIdentifier: "rewardCell")
        
         rewardCell = tableView.dequeueReusableCell(withIdentifier: "rewardCell", for: indexPath as IndexPath) as! RewardViewCell
        
        
        rewardCell.textLabel!.text = rewardArray[indexPath.row]
       
        
        
        
        return rewardCell
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rewardArray.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
    
    private func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // let backItem = UIBarButtonItem()
       // backItem.title = "Back"
//        backItem.
      //  navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
    }
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     
     
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     
     }
     
     func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
     
     }
     
     func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     
     }
     func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     
     }
     func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath) {
     
     }
     func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     
     }
     
     func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath {
     <#code#>
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
