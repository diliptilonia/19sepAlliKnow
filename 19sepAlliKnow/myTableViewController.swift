//
//  myTableViewController.swift
//  19sepAlliKnow
//
//  Created by francois buisson on 19/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    var sections = ["SectionA", "SectionB", "SectionC"]
    
    var names1 = ["papa", "mummy", "ajay", "deepak", "dilip"]
    var names2 = ["papa", "mummy", "ajay", "deepak", "dilip"]
    var names3 = ["papa", "mummy", "ajay", "deepak", "dilip"]
    var contactPhoneNumber = ["3452345", "345324", "4352444", "645734563", "76456745"]
    var myIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0:
           return names1.count
        case 1:
          return  names2.count
        case 2:
          return  names3.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        switch (indexPath.section) {
        case 0:
            cell.myContact.text = names1[indexPath.row]
            cell.myContactPhoneNumber.text = contactPhoneNumber[indexPath.row]
        case 1:
            cell.myContact.text = names2[indexPath.row]
            cell.myContactPhoneNumber.text = contactPhoneNumber[indexPath.row]
        default:
            print("Nothing")
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue1", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let data = segue.destination as! ViewController
            data.name = names1[myIndex]
            data.phoneNumber = contactPhoneNumber[myIndex]
    }
    
   override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            names1.remove(at: myIndex)
        } else if editingStyle == .insert {
            // play action for insert row
        }
    }
    
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    
    
    
    
    
    
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
