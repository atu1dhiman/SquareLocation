//
//  ViewController.swift
//  Location_CLLocations
//
//  Created by Atul Dhiman on 28/11/22.
//
import UIKit
import MapKit


class ViewController: UIViewController {

    var locationManager: CLLocationManager!

    var regionDelegate: SquareRegionDelegate!

    var mapView: MKMapView!

    /// This is the example project
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         setupLocation()
        setupMap()
        setupData()


    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // status is not determined
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        }
            // authorization were denied
        else if CLLocationManager.authorizationStatus() == .denied {

            Helpers.showAlert("Location services were previously denied. Please enable location services for this app in Settings.", sender: self)
        }
            // we do have authorization
        else if CLLocationManager.authorizationStatus() == .authorizedAlways {
            locationManager.startUpdatingLocation()
        }
    }




    func setupMap(){

        // setup mapView
        mapView = MKMapView.init(frame: view.frame)
        mapView.delegate = self
        mapView.showsUserLocation = true

        view.addSubview(mapView)
        mapView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1).isActive = true
         mapView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        let region = MKCoordinateRegion.init(center:  CLLocationCoordinate2D.init(latitude:  12.953013054035946, longitude:  77.5417514266668), latitudinalMeters: 100, longitudinalMeters: 100)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
        mapView.userTrackingMode = .follow
    }
    func setupLocation(){
        // setup locationManager
        locationManager = CLLocationManager()
        locationManager.delegate = self;
        locationManager.distanceFilter = kCLLocationAccuracyNearestTenMeters;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;

        regionDelegate = self
    }



    func setupData(){



        let location1Coordinate = CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175)
        let location2Coordinate = CLLocationCoordinate2D.init(latitude:   12.954288, longitude: 77.543875)
        let location3Coordinate = CLLocationCoordinate2D.init(latitude: 12.955585, longitude: 77.545656)
        
        
        let location4Coordinate = CLLocationCoordinate2D.init(latitude:  12.95644, longitude:  77.547523)
        let location5Coordinate = CLLocationCoordinate2D.init(latitude:   12.956756, longitude: 77.54919)
        let location6Coordinate = CLLocationCoordinate2D.init(latitude: 12.95706, longitude: 77.55112)
        let location7Coordinate = CLLocationCoordinate2D.init(latitude:  12.95771, longitude:  77.55308)
        let location8Coordinate = CLLocationCoordinate2D.init(latitude:   12.958464, longitude: 77.55514)
        let location9Coordinate = CLLocationCoordinate2D.init(latitude: 12.95965, longitude: 77.5559409)
        let location10Coordinate = CLLocationCoordinate2D.init(latitude:  12.9608, longitude:  77.55741)
        let location11Coordinate = CLLocationCoordinate2D.init(latitude:   12.961253, longitude: 77.55921)
        let location12Coordinate = CLLocationCoordinate2D.init(latitude: 12.96156, longitude: 77.561265)
        let location13Coordinate = CLLocationCoordinate2D.init(latitude:  12.961814, longitude:  77.563088)
        let location14Coordinate = CLLocationCoordinate2D.init(latitude:   12.962775, longitude: 77.565921)
        let location15Coordinate = CLLocationCoordinate2D.init(latitude: 12.96334051, longitude: 77.567637)
        let location16Coordinate = CLLocationCoordinate2D.init(latitude:  12.964113, longitude:  77.569515)
        let location17Coordinate = CLLocationCoordinate2D.init(latitude:   12.96438, longitude: 77.57172)
        let location18Coordinate = CLLocationCoordinate2D.init(latitude: 12.964584, longitude: 77.57370)
        let location19Coordinate = CLLocationCoordinate2D.init(latitude:   12.96454, longitude: 77.575914)
        let location20Coordinate = CLLocationCoordinate2D.init(latitude: 12.9635862, longitude: 77.58015)


        // setup regions
        let location1Region = CKSquareRegion.init(regionWithCenter: location1Coordinate, sideLength: 0.025, identifier: "location1Coordinate", onEntry: true, onExit: true)
        let loaction2Region = CKSquareRegion.init(regionWithCenter: location2Coordinate, sideLength: 0.025, identifier: "location2Coordinate", onEntry: false, onExit: true)
        let location3Region =  CKSquareRegion.init(regionWithCenter: location3Coordinate, sideLength: 0.025, identifier: "location3Coordinate", onEntry: true, onExit: false)
        let location4Region = CKSquareRegion.init(regionWithCenter: location4Coordinate, sideLength: 0.025, identifier: "location4Coordinate", onEntry: true, onExit: true)
        let loaction5Region = CKSquareRegion.init(regionWithCenter: location5Coordinate, sideLength: 0.025, identifier: "location5Coordinate", onEntry: false, onExit: true)
        let location6Region =  CKSquareRegion.init(regionWithCenter: location6Coordinate, sideLength: 0.025, identifier: "location6Coordinate", onEntry: true, onExit: false)
        let location7Region = CKSquareRegion.init(regionWithCenter: location7Coordinate, sideLength: 0.025, identifier: "location7Coordinate", onEntry: true, onExit: true)
        let loaction8Region = CKSquareRegion.init(regionWithCenter: location8Coordinate, sideLength: 0.025, identifier: "location8Coordinate", onEntry: false, onExit: true)
        let location9Region =  CKSquareRegion.init(regionWithCenter: location9Coordinate, sideLength: 0.025, identifier: "location9Coordinate", onEntry: true, onExit: false)
        let location10Region = CKSquareRegion.init(regionWithCenter: location10Coordinate, sideLength: 0.025, identifier: "location10Coordinate", onEntry: true, onExit: true)
        let loaction11Region = CKSquareRegion.init(regionWithCenter: location11Coordinate, sideLength: 0.025, identifier: "location11Coordinate", onEntry: false, onExit: true)
        let location12Region =  CKSquareRegion.init(regionWithCenter: location12Coordinate, sideLength: 0.025, identifier: "location12Coordinate", onEntry: true, onExit: false)
        let location13Region = CKSquareRegion.init(regionWithCenter: location13Coordinate, sideLength: 0.025, identifier: "location13Coordinate", onEntry: true, onExit: true)
        let loaction14Region = CKSquareRegion.init(regionWithCenter: location14Coordinate, sideLength: 0.025, identifier: "location14Coordinate", onEntry: false, onExit: true)
        let location15Region =  CKSquareRegion.init(regionWithCenter: location15Coordinate, sideLength: 0.025, identifier: "location15Coordinate", onEntry: true, onExit: false)
        let location16Region = CKSquareRegion.init(regionWithCenter: location16Coordinate, sideLength: 0.025, identifier: "location16Coordinate", onEntry: true, onExit: true)
        let loaction17Region = CKSquareRegion.init(regionWithCenter: location17Coordinate, sideLength: 0.025, identifier: "location17Coordinate", onEntry: false, onExit: true)
        let location18Region =  CKSquareRegion.init(regionWithCenter: location18Coordinate, sideLength: 0.025, identifier: "location18Coordinate", onEntry: true, onExit: false)
        let location19Region = CKSquareRegion.init(regionWithCenter: location19Coordinate, sideLength: 0.025, identifier: "location19Coordinate", onEntry: true, onExit: true)
        let loaction20Region = CKSquareRegion.init(regionWithCenter: location20Coordinate, sideLength: 0.025, identifier: "location20Coordinate", onEntry: false, onExit: true)
     


        // add region to monitor
        regionDelegate.addRegionToMonitor(region: location1Region!)
        regionDelegate.addRegionToMonitor(region: loaction2Region!)
        regionDelegate.addRegionToMonitor(region: location3Region!)
        regionDelegate.addRegionToMonitor(region: location4Region!)
        regionDelegate.addRegionToMonitor(region: loaction5Region!)
        regionDelegate.addRegionToMonitor(region: location6Region!)
        regionDelegate.addRegionToMonitor(region: location7Region!)
        regionDelegate.addRegionToMonitor(region: loaction8Region!)
        regionDelegate.addRegionToMonitor(region: location9Region!)
        regionDelegate.addRegionToMonitor(region: location10Region!)
        regionDelegate.addRegionToMonitor(region: loaction11Region!)
        regionDelegate.addRegionToMonitor(region: location12Region!)
        regionDelegate.addRegionToMonitor(region: location13Region!)
        regionDelegate.addRegionToMonitor(region: loaction14Region!)
        regionDelegate.addRegionToMonitor(region: location15Region!)
        regionDelegate.addRegionToMonitor(region: location16Region!)
        regionDelegate.addRegionToMonitor(region: loaction17Region!)
        regionDelegate.addRegionToMonitor(region: location18Region!)
        regionDelegate.addRegionToMonitor(region: location19Region!)
        regionDelegate.addRegionToMonitor(region: loaction20Region!)
        

        let location1Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location2Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location3Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location4Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location5Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location6Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location7Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location8Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location9Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location10Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location11Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location12Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location13Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location14Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location15Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location16Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location17Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
        let location18Point = [
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude:  77.545656),
            CLLocationCoordinate2D.init(latitude:  12.955585, longitude: 77.545656)]
        let location19Point = [
            CLLocationCoordinate2D.init(latitude:  12.953013, longitude:  77.54175),
            CLLocationCoordinate2D.init(latitude: 12.953113, longitude:  77.54275),
            CLLocationCoordinate2D.init(latitude:  12.953130, longitude: 77.54290),
            CLLocationCoordinate2D.init(latitude:  12.953083, longitude:  77.54200)]
        let location20Point = [
            CLLocationCoordinate2D.init(latitude:  12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude:  77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875),
            CLLocationCoordinate2D.init(latitude: 12.954288, longitude: 77.543875)]
       
        

        let location1Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location2Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location3Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location4Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location5Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location6Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location7Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location8Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location9Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location10Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location11Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location12Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location13Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location14Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location15Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location16Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location17Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        let location18Polygon = MKPolygon.init(coordinates: location3Point, count: 4)
        let location19Polygon = MKPolygon.init(coordinates: location1Point, count: 4)
        let location20Polygon = MKPolygon.init(coordinates: location2Point, count: 4)
        
        mapView.addOverlays([location1Polygon,location2Polygon,location3Polygon
                             ,location4Polygon,location5Polygon,location6Polygon,location7Polygon,location8Polygon,location9Polygon,location10Polygon,location11Polygon,location12Polygon,location13Polygon,location14Polygon,location15Polygon,location16Polygon,location17Polygon,location18Polygon,location19Polygon,location20Polygon])
        

        // setup anotation
        let location1Annotation = MKPointAnnotation()
        location1Annotation.coordinate = location1Coordinate
        location1Annotation.title = "Location 1"

        let location2Annotation = MKPointAnnotation()
        location2Annotation.coordinate = location2Coordinate
        location2Annotation.title = "Location 2"

        let location3Annotation = MKPointAnnotation()
        location3Annotation.coordinate = location3Coordinate
        location3Annotation.title = "Location 3"

        let location4Annotation = MKPointAnnotation()
        location4Annotation.coordinate = location4Coordinate
        location4Annotation.title = "Location 4"

        let location5Annotation = MKPointAnnotation()
        location5Annotation.coordinate = location5Coordinate
        location5Annotation.title = "Location 5"

        let location6Annotation = MKPointAnnotation()
        location6Annotation.coordinate = location6Coordinate
        location6Annotation.title = "Location 6"
        
        let location7Annotation = MKPointAnnotation()
        location7Annotation.coordinate = location7Coordinate
        location7Annotation.title = "Location 7"

        let location8Annotation = MKPointAnnotation()
        location8Annotation.coordinate = location8Coordinate
        location8Annotation.title = "Location 8"

        let location9Annotation = MKPointAnnotation()
        location9Annotation.coordinate = location9Coordinate
        location9Annotation.title = "Location 9"
        
        let location10Annotation = MKPointAnnotation()
        location10Annotation.coordinate = location10Coordinate
        location10Annotation.title = "Location 10"

        let location11Annotation = MKPointAnnotation()
        location11Annotation.coordinate = location11Coordinate
        location11Annotation.title = "Location 11"

        let location12Annotation = MKPointAnnotation()
        location12Annotation.coordinate = location12Coordinate
        location12Annotation.title = "Location 12"
        
        let location13Annotation = MKPointAnnotation()
        location13Annotation.coordinate = location13Coordinate
        location13Annotation.title = "Location 13"

        let location14Annotation = MKPointAnnotation()
        location14Annotation.coordinate = location14Coordinate
        location14Annotation.title = "Location 14"

        let location15Annotation = MKPointAnnotation()
        location15Annotation.coordinate = location15Coordinate
        location15Annotation.title = "Location 15"
        
        let location16Annotation = MKPointAnnotation()
        location16Annotation.coordinate = location16Coordinate
        location16Annotation.title = "Location 16"

        let location17Annotation = MKPointAnnotation()
        location17Annotation.coordinate = location17Coordinate
        location17Annotation.title = "Location 17"

        let location18Annotation = MKPointAnnotation()
        location18Annotation.coordinate = location18Coordinate
        location18Annotation.title = "Location 18"
        
        let location19Annotation = MKPointAnnotation()
        location19Annotation.coordinate = location19Coordinate
        location19Annotation.title = "Location 19"

        let location20Annotation = MKPointAnnotation()
        location20Annotation.coordinate = location20Coordinate
        location20Annotation.title = "Location 20"

        mapView.addAnnotations([location1Annotation,location2Annotation,location3Annotation
                               ,location4Annotation,location5Annotation,location6Annotation
                                ,location7Annotation,location8Annotation,location9Annotation
                                ,location10Annotation,location11Annotation,location12Annotation
                                ,location13Annotation,location14Annotation,location15Annotation
                                ,location16Annotation,location17Annotation,location18Annotation
                                ,location19Annotation,location20Annotation])
    }
}

extension ViewController: MKMapViewDelegate{

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {

        let polygonView = MKPolygonRenderer(overlay: overlay)
        polygonView.fillColor = UIColor(red: 0, green: 0.847, blue: 1, alpha: 0.25)

        return polygonView
    }
}

extension ViewController: CLLocationManagerDelegate{

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
        regionDelegate.updateRegion(location: location)
        }
    }
}
extension ViewController: SquareRegionDelegate{

    func didEnterRegion(region: CKSquareRegion) {

        let message = "welcome to \(region.identifier ?? "")"
        Helpers.showAlert("enter region", sender: self, message: message)

        print("*** enter \(region.identifier ?? "") ****")
    }

    func didExitRegion(region: CKSquareRegion) {


        let message = "The \(region.identifier  ?? "") was happy to see you too, Bye"
        Helpers.showAlert("leave region", sender: self, message: message)
         print("*** leave \(region.identifier  ?? "") ****")

    }

}
