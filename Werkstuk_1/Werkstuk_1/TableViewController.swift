//
//  TableViewController.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var personenlijst = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //var adres = Adres(straat: "viooltjeslaan", huisnummer: "8", )
        let adres = Adres(straat: "Viooltjeslaan", huisnummer: "8", postcode: "1770", gemeente: "Liedekerke")
        let persoon = Persoon(naam: "Rooselaers", voornaam: "Stijn", foto: #imageLiteral(resourceName: "stijn")  , adres: adres, gpsLat: 50.8503463, gpsLong: 4.351721099999963, telefoon: "0478813696")
        self.personenlijst = [persoon]
        
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
        return personenlijst.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            cell.textLabel?.text=self.personenlijst[indexPath.row].voornaam
            cell.detailTextLabel?.text=self.personenlijst[indexPath.row].naam
        cell.imageView?.image=self.personenlijst[indexPath.row].foto
        
        // Configure the cell...

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextvc = segue.destination as? ViewController
        {
            let indexPath = self.tableView.indexPathForSelectedRow!
            nextvc.persoon=self.personenlijst[indexPath.row]
        }
        
        
        /*if segue.identifier=="naarDetailPersoon" {
            let vc = segue.destination as! ViewController
            let indexPath = self.tableView.indexPathForSelectedRow
           // vc.item = items[(indexPath?.row)!]
         //   vc.persoon=personenlijst[(indexPath?.row)!]
            vc.persoon = personenlijst[(indexPath?.row)!]
 
        } */
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
