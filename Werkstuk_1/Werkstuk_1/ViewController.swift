//
//  ViewController.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController:  UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    var persoon: Persoon?
    var locationManager = CLLocationManager()
    
    

    @IBOutlet weak var telefoonnummer: UILabel!
    @IBOutlet weak var achternaam: UILabel!
    @IBOutlet weak var gemeente: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
  
    @IBOutlet weak var straat: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    
        self.voornaam.text=persoon?.voornaam
        self.achternaam.text=persoon?.naam
        
        self.straat.text=(persoon?.adres.straat)! + " " + (persoon?.adres.huisnummer)!
       
        self.gemeente.text=(persoon?.adres.postcode)! + " " + (persoon?.adres.gemeente)!
        self.telefoonnummer.text=persoon?.telefoon
        self.foto.image=persoon?.foto
       
        
        self.mapView.addAnnotation(persoon!)
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    func mapView(_mapView: MKMapView, didUpdate userlocation: MKUserLocation) {
        let center = persoon?.coordinate
        let region = MKCoordinateRegion(center: center!, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
       
        mapView.setRegion(region, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextvc = segue.destination as? ViewControllerfoto
        {
            
            nextvc.image=self.persoon?.foto
        }
    }

}

