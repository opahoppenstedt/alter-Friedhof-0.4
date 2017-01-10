//
//  ViewController.swift
//  alter Friedhof 0.4
//
//  Created by HiWi on 15.12.16.
//  Copyright © 2016 HiWi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // mixedreality creating tiled overlays tutorial ##########

        
        //let midCoordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(50.582345, 8.687494)
        
        
        //working
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(50.582344, 8.687493)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
       
        
        map.setRegion(region, animated: true)
        
        let pin = PinAnnotation(title: "Alter Friedhof", subtitle: "Audiowalk", coordinate: location)
        
        map.addAnnotation(pin)
        
        //next Pin (Roentgen) ###########################
        
        let locationRoentgen:CLLocationCoordinate2D = CLLocationCoordinate2DMake(50.582444, 8.687555)
        let pin2 = PinAnnotation(title: "Konrad Röntgen", subtitle: "der mit den Strahlen", coordinate: locationRoentgen)
        map.addAnnotation(pin2)
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
