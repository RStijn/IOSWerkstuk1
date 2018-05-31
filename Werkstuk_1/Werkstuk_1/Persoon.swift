//
//  Persoon.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit


class Persoon: NSObject {
    
    var naam: String
    var voornaam: String
    var foto: UIImage
    var adres: Adres
    var gpsLat: Float
    var gpsLong: Float
    var telefoon: String
    
    init(naam: String,voornaam:
        String, foto: UIImage, adres: Adres, gpsLat: Float, gpsLong: Float, telefoon: String) {
        self.naam=naam
        self.voornaam=voornaam
        self.foto = foto
        self.adres=adres
        self.gpsLat=gpsLat
        self.gpsLong=gpsLong
        self.telefoon=telefoon
        
    }

}
