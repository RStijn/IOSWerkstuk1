//
//  TableViewController.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import CoreLocation
class TableViewController: UITableViewController {

    var personenlijst = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //var adres = Adres(straat: "viooltjeslaan", huisnummer: "8", )
        let adres1 = Adres(straat: "Viooltjeslaan", huisnummer: "8", postcode: "1770", gemeente: "Liedekerke")
         let coo1 = CLLocationCoordinate2D(latitude: 50.844226, longitude: 4.327051)
        let persoon1 = Persoon(naam: "Rooselaers", voornaam: "Stijn", foto: #imageLiteral(resourceName: "Stijn")  , adres: adres1, coordinate: coo1, telefoon: "0478813696")
        
        let adres2 = Adres(straat: "Poelkveldstraat", huisnummer: "50", postcode: "1761", gemeente: "Pamel")
        let coo2 = CLLocationCoordinate2D(latitude: 50.826118, longitude: 4.073781)
        let persoon2 = Persoon(naam: "Mostinckx", voornaam: "Niels", foto: #imageLiteral(resourceName: "Niels")  , adres: adres2, coordinate: coo2, telefoon: "1234567890")
        let adres3 = Adres(straat: "Ergens in Eizeringen straat", huisnummer: "0", postcode: "idk de postcode,", gemeente: "Eizeringen")
        let coo3 = CLLocationCoordinate2D(latitude: 50.828771, longitude: 4.123909)
        let persoon3 = Persoon(naam: "Delcourt", voornaam: "Rhune", foto: #imageLiteral(resourceName: "Rhune")  , adres: adres3, coordinate: coo3, telefoon: "1234567890")
        let adres4 = Adres(straat: "Ergens tussen de appeltjes", huisnummer: "0", postcode: "idk de postcode,", gemeente: "Eizeringen")
        let coo4 = CLLocationCoordinate2D(latitude: 50.828771, longitude: 4.123909)
        let persoon4 = Persoon(naam: "Van Der Meulen", voornaam: "Myrthe", foto: #imageLiteral(resourceName: "Myrthe")  , adres: adres4, coordinate: coo4, telefoon: "1234567890")
        let adres5 = Adres(straat: "Ergens in een straat aan de steenweg", huisnummer: "0", postcode: "idk de postcode,", gemeente: "Lennik")
        let coo5 = CLLocationCoordinate2D(latitude: 50.828771, longitude: 4.123909)
        let persoon5 = Persoon(naam: "Bettens", voornaam: "Daria", foto: #imageLiteral(resourceName: "Daria")  , adres: adres5, coordinate: coo5, telefoon: "1234567890")
        
        
        self.personenlijst += [persoon1]
        self.personenlijst += [persoon2]
        self.personenlijst += [persoon3]
        self.personenlijst += [persoon4]
        self.personenlijst += [persoon5]
        
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
