//
//  HiScoreTableViewController.swift
//  iOS-Project
//
//  Created by Rambo Wu on 10/26/16.
//  Copyright © 2016 cs378. All rights reserved.
//

import UIKit

class HiScoreTableViewController: UITableViewController {
    
    let userScoreDict: [String: Int] = ["rambowu" : 9500000, "justintran" : 9000500, "rachellerogers" : 8950100, "aubreygraham" : 6666666,"kanyewest" : 6666500, "anon123" : 1555000, "notdrake" : 666666, "therealkanye" : 150000]
    let usernameArray: [String] = ["","","rambowu","justintran","rachellerogers","aubreygraham","kanyewest","anon123","notdrake","therealkanye"]
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
        return UIInterfaceOrientationMask.landscape
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        // The first cell will be for the High Score title label and the back button
        if indexPath.row == 0
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "topHiScoreID", for: indexPath)
        }
        else
        {
            cell = tableView.dequeueReusableCell(withIdentifier: "hiScoreID", for: indexPath)
        }
        
        // Makes every other cell light gray for better UI look
        if indexPath.row % 2 == 0
        {
            cell?.backgroundColor = UIColor.lightGray
        }
        
        // Temporary high score data because our database is not set up yet
        // Delete when finished
        
        if indexPath.row > 1
        {
            let username: String = usernameArray[indexPath.row]
            let userCell = cell as! HiScoreTableViewCell
            userCell.usernameOutlet.font = UIFont(name: userCell.usernameOutlet.font.fontName, size: 18.0)
            userCell.scoreOutlet.font = UIFont(name: userCell.usernameOutlet.font.fontName, size: 18.0)
            userCell.usernameOutlet.text = username
            userCell.scoreOutlet.text = "\(userScoreDict[username]!)"
        }
        
        return cell!
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
