//
//  MapViewPlugin.swift
//  Runner
//
//  Created by Akshay N on 15/12/23.
//

import Flutter

public class MapViewPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let factory = MapViewFactory(messenger: registrar.messenger())
    registrar.register(factory, withId: "MapView")
  }
}

