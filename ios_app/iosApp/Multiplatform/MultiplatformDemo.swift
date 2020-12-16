//
//  MultiplatformDemo.swift
//  iosApp
//
//  Created by Liber Da Silva on 07/08/2020.
//

import Flutter

open class MultiplatformDemo {
    public static var instance = MultiplatformDemo()
    
    var aliveEngines = [String: MultiplatformDemoEngine]()
    
    public var mainEngine: MultiplatformDemoEngine? {
        get {
            getEngineInstance(multiplatformDemoEngine)
        }
    }
    
    public func initialize() throws {
        _ = try startNewEngineInstance(multiplatformDemoEngine)
    }

    public func startNewEngineInstance(_ engineId: String) throws -> MultiplatformDemoEngine {
        return try MultiplatformDemoEngine(engineId)
    }
    
    public func engineInstanceExists(_ engineId: String) -> Bool {
        return aliveEngines[engineId] != nil
    }

    public func getEngineInstance(_ engineId: String) -> MultiplatformDemoEngine? {
        return aliveEngines[engineId]
    }

    public func getOrStartNewEngineInstance(_ engineId: String) throws -> MultiplatformDemoEngine {
        return try getEngineInstance(engineId) ?? startNewEngineInstance(engineId)
    }

    public func destroy() {
        aliveEngines.forEach { aliveEngine in
            aliveEngine.value.stop()
        }
    }

    // MARK: Constants
    let multiplatformDemoEngine = "multiplatformDemoEngine"        
}
