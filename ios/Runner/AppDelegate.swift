import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let registrar = self.flutterEngine?.registrar(forPlugin: "MapViewPlugin") as! FlutterPluginRegistrar
    let factory = MapViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "MapView")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
