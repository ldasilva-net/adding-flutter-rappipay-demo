//
//  MultiplatformDemoPlugin.swift
//  iosApp
//
//  Created by Liber Da Silva on 07/08/2020.
//

import Flutter

class MultiplatformDemoPlugin: NSObject {
    
    var routerChannel: RouterChannel!
    
    init(with registrar: FlutterPluginRegistrar?) {
        if let messenger = registrar?.messenger() {
            routerChannel = RouterChannel(with: messenger)
        }
    }
    
    func destroy() {
        routerChannel.destroy()
    }
    
}
