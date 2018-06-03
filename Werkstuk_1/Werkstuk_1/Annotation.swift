//
//  Annotation.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 3/06/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import MapKit

class Annotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title:String?) {
    self.coordinate = coordinate
    self.title = title
    
    }
    
}
