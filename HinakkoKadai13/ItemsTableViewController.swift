//
//  ItemsTableViewController.swift
//  HinakkoKadai13
//
//  Created by Hina on 2023/07/11.
//

import UIKit

class ItemsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

        let KeyName = "Name"
        let KeyCheck = "Check"

        var items: [Dictionary<String,Any>] = []

        override func viewDidLoad() {
            super.viewDidLoad()

            self.items = [
                [KeyName:"りんご", KeyCheck:false],
                [KeyName:"みかん", KeyCheck:true],
                [KeyName:"バナナ", KeyCheck:false],
                [KeyName:"パイナップル", KeyCheck:true]
            ]
        }


    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count
    }


     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! ItemTableViewCell

        let item = self.items[indexPath.row]

        cell.checkImageView.image = nil
        if item[KeyCheck] as? Bool == true {
            cell.checkImageView.image = UIImage(named: "checkMark")
        }

        cell.nameLabel.text = (item[KeyName] as? String) ?? ""

        return cell
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
