//
//  ViewController.swift
//  MapTest
//
//  Created by Utku Yeğen on 10/02/2017.
//  Copyright © 2017 Utku Yeğen. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 38.3824236, longitude: 27.1648329, zoom: 9)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        mapView.mapType = kGMSTypeNormal
        mapView.isIndoorEnabled = false
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Izmir"
        marker.snippet = "Turkey"
        marker.map = mapView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

