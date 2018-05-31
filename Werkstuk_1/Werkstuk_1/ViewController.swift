//
//  ViewController.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import MapKit


class ViewController:  UIViewController, MKMapViewDelegate{
    var persoon: Persoon?
    
    
    
    @IBOutlet weak var telefoonnummer: UILabel!
    @IBOutlet weak var achternaam: UILabel!
    @IBOutlet weak var gemeente: UILabel!
    
    @IBOutlet weak var postcode: UILabel!
    @IBOutlet weak var huisnummer: UILabel!
    @IBOutlet weak var straat: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.voornaam.text=persoon?.voornaam
        self.achternaam.text=persoon?.naam
        self.straat.text=persoon?.adres.straat
        self.huisnummer.text=persoon?.adres.huisnummer
        self.postcode.text=persoon?.adres.postcode
        self.gemeente.text=persoon?.adres.gemeente
        self.telefoonnummer.text=persoon?.telefoon
        self.foto.image=persoon?.foto
        
       
        
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

