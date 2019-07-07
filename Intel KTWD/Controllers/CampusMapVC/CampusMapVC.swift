//
//  CampusMapVC.swift
//  Intel KTWD
//
//  Created by Melanie Cooray on 6/24/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import MapKit

class CampusMapVC: UIViewController, MKMapViewDelegate {
    
    var mapView : MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        createMap()
        centerMap()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func createMap() {
        mapView = MKMapView(frame: CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.maxY)!, width: view.frame.width, height: view.frame.height - (self.navigationController?.navigationBar.frame.maxY)!))
        mapView.delegate = self
        mapView.mapType = .hybrid
        view.addSubview(mapView)
    }
    
    func centerMap() {
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.645502, longitude: -121.164101), latitudinalMeters: 1000, longitudinalMeters: 1000)
        self.mapView.setRegion(region, animated : true)
    }

}
