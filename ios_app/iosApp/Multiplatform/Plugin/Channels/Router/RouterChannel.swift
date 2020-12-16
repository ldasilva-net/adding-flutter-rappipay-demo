//
//  RouterChannel.swift
//  iosApp
//
//  Created by Liber Da Silva on 14/08/2020.
//

import Flutter

open class RouterChannel : NSObject {
    
    private let routerChannel: FlutterMethodChannel
    private var isChannelReady: Bool = false
    private var onReadyHandler: () -> () = {}
    private var returnToPlatformHandler: (_ routerResult: RouterResult?) -> () = {
        (routerResult) -> () in
    }
        
    init(with messenger: FlutterBinaryMessenger) {
        routerChannel = FlutterMethodChannel(
            name: routerChannelId,
            binaryMessenger: messenger
        )
        
        super.init()
        
        routerChannel.setMethodCallHandler(onMethodCall)
    }

    func onMethodCall(_ methodCall: FlutterMethodCall, result: FlutterResult) {
        switch methodCall.method {
            case reportChannelIsReady:
                isChannelReady = true
                onReadyHandler()
                
            case returnToPlatform:
                var routerResult: RouterResult?
                
                if let args = methodCall.arguments as? [String: Any],
                   let routerResultString = args[self.routerResult] as? String,
                   let routerResultJSON = routerResultString.data(using: .utf8) {
                    routerResult = try! JSONDecoder().decode(RouterResult.self, from: routerResultJSON)
                }
                                
                returnToPlatformHandler(routerResult)
            
            default: result(FlutterMethodNotImplemented)
        }
    }
    
    public func onReady(_ handler:@escaping () -> ()) {
        self.onReadyHandler = handler
        if (isChannelReady) {
            self.onReadyHandler()
        }
    }

    public func navigateTo(_ routerArgs: RouterArgs) throws {
        let jsonData = try JSONEncoder().encode(routerArgs)
        let jsonString = String(data: jsonData, encoding: .utf8)
        
        routerChannel.invokeMethod(navigateTo, arguments: jsonString)
    }

    public func setReturnToPlatformHandler(_ handler:@escaping (_ routerResult: RouterResult?) -> ()) {
        self.returnToPlatformHandler = handler
    }

    public func destroy() {
        routerChannel.setMethodCallHandler(nil)
    }

    // MARK: Constants
    let routerChannelId = "com.rappipay_demo/router"

    let reportChannelIsReady = "reportChannelIsReady"
    let navigateTo = "navigateTo"
    let returnToPlatform = "returnToPlatform"

    let routerResult = "routerResult"
}
