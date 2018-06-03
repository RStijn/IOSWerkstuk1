//
//  ViewControllerMaps.swift
//  Werkstuk_1
//
//  Created by Stijn Rooselaers on 3/06/18.
//  Copyright © 2018 Stijn Rooselaers. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMaps: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    var personen = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        self.vulMap()
        
        // Do any additional setup after loading the view.
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
     
    }
    
    //vul de map met personen uit de lijst
    func vulMap(){
        for person in self.personen {
            let location = CLLocationCoordinate2D(latitude: person.coordinate.latitude, longitude: person.coordinate.longitude)
            
            let annotation = Annotation(coordinate: location, title: person.voornaam + " " + person.naam)
            
     //       self.map.addAnnotation(annotation)
            self.mapView.addAnnotation(annotation)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
