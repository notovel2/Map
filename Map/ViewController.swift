//
//  ViewController.swift
//  Map
//
//  Created by 6272 on 11/9/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit
import  MapKit
class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        addPinToMap(lat: 13.795853, long: 100.325970, title: "EG Department", subtitle: "Phuttamonthon ,Salaya")
        addPinToMap(lat: 13.794108, long: 100.325736, title: "OP Building", subtitle: "Phuttamonthon ,Salaya")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addPinToMap(lat:CLLocationDegrees,long:CLLocationDegrees,title:String,subtitle:String){
        
        let location = CLLocationCoordinate2DMake(lat, long)
        let annotation = MapMarker(coordinate: location, title: title, subtitle: subtitle)
        mapView.addAnnotation(annotation)
        setCenterOfMapToLocation(location: location)
    }
    
    func setCenterOfMapToLocation(location: CLLocationCoordinate2D){
        let coordinate = CLLocationCoordinate2DMake(location.latitude, location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true)
    }
}

