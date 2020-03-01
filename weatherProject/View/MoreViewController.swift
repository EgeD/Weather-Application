//
//  MoreViewController.swift
//  weatherProject
//
//  Created by Ege on 18.12.2019.
//  Copyright © 2019 Ege Dincer. All rights reserved.
//

import UIKit
import MapKit

extension MoreViewController: MapSourceDelegate {
    func annotationLoaded() { }
}

class MoreViewController: UIViewController {
    var latitude: Double?
    var longitude: Double?
    var city: String?
    let mapSource = MapSource()
    
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapSource.delegate = self
        title = "Map"
        textField.text = mapSource.getFoodComments(location: city!)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    override func viewDidAppear(_ animated: Bool) {
        self.textField.flashScrollIndicators()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4) {
            let centerCity = CLLocationCoordinate2D(latitude: self.latitude!, longitude: self.longitude!)
            let center = MKCoordinateRegion(center: centerCity, latitudinalMeters: 30000, longitudinalMeters: 30000)
            let latitude = self.mapSource.getAnnotations(location: self.city!)[0]
            let longitude = self.mapSource.getAnnotations(location: self.city!)[1]
            let annotation = MKPointAnnotation()
            annotation.title = "Try Here"
            let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            
            annotation.coordinate = coordinate
            
            self.map.setCenter(centerCity, animated: true)
            self.map.setRegion(center, animated: true)
            self.map.addAnnotation(annotation)
        }
    }
}
