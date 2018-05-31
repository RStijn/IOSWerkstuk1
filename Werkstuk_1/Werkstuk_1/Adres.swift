//
//  Adres.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 31/05/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit

class Adres: NSObject {
    var straat: String
    var huisnummer: String
    var postcode: String
    var gemeente: String
    
    init(straat:String, huisnummer:String, postcode:String,gemeente:String) {
        self.straat=straat
        self.huisnummer=huisnummer
        self.postcode=postcode
        self.gemeente=gemeente
        
    }

}
