//
//  ViewController.swift
//  alter Friedhof 0.4
//
//  Created by HiWi on 15.12.16.
//  Copyright © 2016 HiWi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Alter Friedhof"
        configureMap()
        configurePins()
    }

    func configureMap() {
        mapView.delegate = self
        mapView.mapType = .satellite

        let urlTemplate = Bundle.main.bundleURL.absoluteString + "Images/Tiles/{z}/{x}/{y}.png"
        let overlay = TileOverlay(urlTemplate: urlTemplate)
        overlay.canReplaceMapContent = false
        overlay.alpha = 0.7
        mapView.add(overlay)

        recentreMap()
    }

    func recentreMap() {
        let location = CLLocationCoordinate2D(latitude: 50.582344, longitude: 8.687493)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegionMake(location, span)

        mapView.setRegion(region, animated: true)
        mapView.regionThatFits(region)
    }

    func configurePins() {
/*
         let pin = PinAnnotation(title: "Alter Friedhof", subtitle: "Audiowalk", coordinate: location)

         map.addAnnotation(pin)

         //next Pin (Roentgen) ###########################

         let locationRoentgen:CLLocationCoordinate2D = CLLocationCoordinate2DMake(50.582444, 8.687555)
         let pin2 = PinAnnotation(title: "Konrad Röntgen", subtitle: "der mit den Strahlen", coordinate: locationRoentgen)
         map.addAnnotation(pin2)
*/
    }

    // MARK: - MKMapViewDelegate

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        guard let tileOverlay = overlay as? TileOverlay else {
            return MKOverlayRenderer()
        }

        let renderer = MKTileOverlayRenderer(overlay: overlay)
        renderer.alpha = tileOverlay.alpha
        
        return renderer
    }
}
