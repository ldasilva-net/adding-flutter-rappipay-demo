//
//  MultiplatformDemoComponent.swift
//  iosApp
//
//  Created by Liber Da Silva on 02/12/2020.
//

import Foundation
import Flutter

open class MultiplatformDemoComponent {
    private let flutterViewController: FlutterViewController
    
    init(_ flutterViewController: FlutterViewController) {
        self.flutterViewController = flutterViewController
    }
    
    public func getViewController() -> UIViewController {
        return flutterViewController as UIViewController
    }
}
