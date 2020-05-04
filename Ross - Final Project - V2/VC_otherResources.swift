//
//  VC_otherResources.swift
//  Ross - Final Project - V2
//
//  Created by Emily Ross on 5/3/20.
//  Copyright © 2020 Emily Ross. All rights reserved.
//

import UIKit
import CoreLocation
import WebKit

class VC_otherResources: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    let locMan: CLLocationManager = CLLocationManager()
    var startLocation: CLLocation!
    
    let kplanetFitnessLatitude: CLLocationDegrees = 40.599970
    let kplanetFitnessLongitude: CLLocationDegrees = -79.947200
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let newLocation: CLLocation=locations[0]
        NSLog("Something is Happening")
        
        if newLocation.horizontalAccuracy >= 0 {
            let planetFitness: CLLocation = CLLocation(latitude: kplanetFitnessLatitude, longitude: kplanetFitnessLongitude)
            let delta: CLLocationDistance = planetFitness.distance(from: newLocation)
            let miles: Double = (delta * 0.000621371) + 0.5
            if miles < 3 {
                locMan.stopUpdatingLocation()
                distanceLabel.text = "Gym Time!!"
            } else {
                let commaDelimited: NumberFormatter = NumberFormatter()
                commaDelimited.numberStyle = NumberFormatter.Style.decimal
                
                distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+" miles to Planet Fitness"
            }
        }
    
        
        
        
        
    }
        
    @IBOutlet weak var webView: WKWebView!
    @IBAction func openSite(_ sender: Any) {
        
        if let url = URL(string: "https://www.healthywomen.org/content/article/what-do-after-workout"){
            UIApplication.shared.open(url,options:[:])
        }
    }
    
        
        
        
        
        
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locMan.delegate = self
        locMan.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locMan.distanceFilter = 1609;
        locMan.requestWhenInUseAuthorization()
        locMan.startUpdatingLocation()
        startLocation = nil
        
        let myURL = URL(string: "https://www.healthywomen.org/content/article/what-do-after-workout")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
