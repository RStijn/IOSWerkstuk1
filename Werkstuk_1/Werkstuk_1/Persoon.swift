//
//  Persoon.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Foundation

class Persoon: NSObject, MKAnnotation {
    
    
    
    var naam: String
    var voornaam: String
    var foto: UIImage
    var adres: Adres
   var coordinate: CLLocationCoordinate2D
    var telefoon: String
    
    init(naam: String,voornaam:
        String, foto: UIImage, adres: Adres, coordinate: CLLocationCoordinate2D, telefoon: String) {
        self.naam=naam
        self.voornaam=voornaam
        self.foto = foto
        self.adres=adres
        self.coordinate=coordinate
        self.telefoon=telefoon
        
    }

}
