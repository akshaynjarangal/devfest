import Flutter
import UIKit
import MapKit

class MapView: NSObject, FlutterPlatformView {
  private var mapView: MKMapView!

  init(frame: CGRect, viewIdentifier: Int64, arguments: Any?, binaryMessenger: FlutterBinaryMessenger) {
    super.init()

    mapView = MKMapView(frame: frame)
    mapView.delegate = self

    let location = CLLocationCoordinate2D(latitude: 11.2925873, longitude: 75.9151238)
    let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    let region = MKCoordinateRegion(center: location, span: span)

    mapView.setRegion(region, animated: true)

    let annotation = MKPointAnnotation()
    annotation.coordinate = location
    annotation.title = "Poolakkode"
    annotation.subtitle = "KR B"
    mapView.addAnnotation(annotation)
  }

  func view() -> UIView {
    return mapView
  }
}

extension MapView: MKMapViewDelegate {
  // Implement any additional map view delegate methods if needed
}
