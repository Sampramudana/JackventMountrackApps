//
//  MapKitViewController.swift
//  Jackvent : MounTrack
//
//  Created by Becak Holic on 11/19/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {

    @IBOutlet weak var petaGunung: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lokasiGunung1 = CLLocationCoordinate2D(latitude: -8.1000000, longitude: 112.9166700)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: lokasiGunung1,span: span)
        petaGunung.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = lokasiGunung1
        annotation.title = "Semeru"
        annotation.subtitle = "Gunung Semeru"
        petaGunung.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
