//
//  MultiplatformDemoEngine.swift
//  iosApp
//
//  Created by Liber Da Silva on 01/12/2020.
//

import Foundation
import Flutter

open class MultiplatformDemoEngine {
    private let engineId: String
    private let flutterEngine: FlutterEngine
    private let multiplatformDemoPlugin : MultiplatformDemoPlugin
    
    public lazy var router: RouterChannel = multiplatformDemoPlugin.routerChannel

    init(_ engineId: String) throws {
        let newFlutterEngine = try MultiplatformDemoEngine.createFlutterEngine(engineId)
        
        self.engineId = engineId
        self.flutterEngine = newFlutterEngine
        self.multiplatformDemoPlugin = MultiplatformDemoPlugin(
            with: flutterEngine.registrar(
                forPlugin: String(describing: MultiplatformDemoPlugin.self)
            )
        )
        
        MultiplatformDemo.instance.aliveEngines[engineId] = self
    }
    
    public func buildNewComponent() -> MultiplatformDemoComponent {
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        return MultiplatformDemoComponent(flutterViewController)
    }
    
    public func stop() {
        multiplatformDemoPlugin.destroy()
        flutterEngine.destroyContext()
        MultiplatformDemo.instance.aliveEngines.removeValue(forKey: engineId)
    }

    private static func createFlutterEngine(_ engineId: String) throws -> FlutterEngine {
        if (MultiplatformDemo.instance.engineInstanceExists(engineId)) {
            throw MultiplatformDemoEngineError.engineAlreadyExists(engineId)
        }
        
        let engine = FlutterEngine(name: engineId)
        engine.run()
                
        return engine
    }
}
