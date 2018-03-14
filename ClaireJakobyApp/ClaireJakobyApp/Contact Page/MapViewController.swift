//
//  MapViewController.swift
//  ClaireJakobyApp
//
//  Created by Claire Jakoby on 13-03-18.
//  Copyright © 2018 Claire Jakoby. All rights reserved.
//

import Foundation
import UIKit
import MapKit


class MapViewController : UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocationCoordinate2D(latitude: 52.2269977, longitude: 5.1935821)
    let mapCenter = CLLocation(latitude: 52.2269977, longitude: 5.1935821)
    let regionRadius: CLLocationDistance = 2000
    var pointAnnotation : CustomAnnotation!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointAnnotation = CustomAnnotation()
        
        centerMapOnLocation(location: mapCenter)
        pointAnnotation.coordinate = initialLocation
        pointAnnotation.title = "Jan van der Heijdenstraat 183"
        pointAnnotation.subtitle = "1223 BK  Hilversum"
        //pointAnnotation.pinCustomImageName = "Annotation-Point"
        mapView.addAnnotation(pointAnnotation)
        
        mapView.delegate = self
        
    }
    
    func mapView(_ viewFormapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "pin"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }
        
        let customPointAnnotation = annotation as! CustomAnnotation
        annotationView?.image = UIImage(named: customPointAnnotation.pinCustomImageName)
        
        return annotationView
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
}
