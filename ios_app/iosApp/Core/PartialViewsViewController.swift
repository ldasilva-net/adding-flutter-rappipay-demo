//
//  PartialViewsViewController.swift
//  iosApp
//
//  Created by Liber Da Silva on 30/11/2020.
//

import UIKit
import Flutter

class PartialViewsViewController: UIViewController {
    // MARK: Configuration
    @IBOutlet weak var partialView1View: UIView!
    @IBOutlet weak var partialView2View: UIView!
    
    // MARK: Lifecycle
    override func viewDidAppear(_ animated: Bool) {
        createPartialView(partialView1View, partialView1EngineId, "/partialView1Test")
        createPartialView(partialView2View, partialView2EngineId, "/partialView2Test")
    }
    
    // MARK: Utils
    private func createPartialView(_ destinationView: UIView, _ engineId: String, _ path: String) {
        do {
            let multiplatformEngine = try MultiplatformDemo.instance.getOrStartNewEngineInstance(engineId)
            let multiplatformRouter = multiplatformEngine.router
            multiplatformRouter.onReady {
                do {
                    let routerArgs = RouterArgs(path: path)
                    try multiplatformRouter.navigateTo(routerArgs)
                    
                    let multiplatformViewController = multiplatformEngine.buildNewComponent().getViewController()
                                        
                    multiplatformViewController.willMove(toParent: self)
                    multiplatformViewController.view.frame = destinationView.bounds
                    destinationView.addSubview(multiplatformViewController.view)
                    multiplatformViewController.didMove(toParent: self)
                } catch {
                    print("Error on navigation channel: \(error)")
                }
            }
        } catch MultiplatformDemoEngineError.engineAlreadyExists(let engineId) {
            print("Engine '\(engineId)' already exists")
        } catch {
            print("Error on instance an engine: \(error)")
        }
    }
    
    // MARK: Constants
    let partialView1EngineId = "partialView1EngineId"
    let partialView2EngineId = "partialView2EngineId"
}
