//
//  TableViewController.swift
//  UIAnimation
//
//  Created by Тамирлан Абаев   on 31.03.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var phones = [Phone.init(name: "iPhone", price: "1200$", processor: "Snapdragon 105", camera: "10MPX"),
                  Phone.init(name: "Samsung", price: "500$", processor: "Anapdragon 120", camera: "10MPX"),
                  Phone.init(name: "Huawei", price: "400$", processor: "Snapdragon 100", camera: "10MPX"),
                  Phone.init(name: "Xiaomi", price: "500$", processor: "Snapdragon 825", camera: "10MPX"),
                  Phone.init(name: "Honor", price: "300$", processor: "Snapdragon 835", camera: "10MPX"),
                  Phone.init(name: "Motorolla", price: "50$", processor: "Snapdragon 120", camera: "10MPX"),
                  Phone.init(name: "Nokia", price: "100$", processor: "Snapdragon 900", camera: "10MPX")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return phones.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.titleText.text = phones[indexPath.row].name
        cell.processorText.text = phones[indexPath.row].processor
        cell.cameraText.text = phones[indexPath.row].camera
        cell.subTitleText.text = phones[indexPath.row].price
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(translationX: 0, y: cell.contentView.frame.height)
        UIView.animate(withDuration: 1, delay: 0.3 * Double(indexPath.row)) {
            cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
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
