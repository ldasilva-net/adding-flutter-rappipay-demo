//
//  MainViewController.swift
//  iosApp
//
//  Created by Liber Da Silva on 30/11/2020.
//

import UIKit
import Flutter

class MainViewController: UIViewController, ReturnToPlatformHandler {
    // MARK: Configuration
    @IBOutlet weak var testMainEngineButton: UIButton! {
        didSet {
            testMainEngineButton.addTarget(self, action: #selector(testMainEngine(_:)), for: .touchUpInside)
        }
    }
    
    @IBOutlet weak var stopEnginesButton: UIButton! {
        didSet {
            stopEnginesButton.addTarget(self, action: #selector(stopEngines(_:)), for: .touchUpInside)
        }
    }
    
    // MARK: Implementation
    @IBAction func testMainEngine(_ sender: UIButton) {
        do {
            if let multiplatformEngine = MultiplatformDemo.instance.mainEngine,
               let navigationController = navigationController {
               
                let multiplatformRouter = multiplatformEngine.router
                
                multiplatformRouter.onReady {
                    do {
                        let routerArgs = RouterArgs(path: "/history", args: "Back to platform!")
                        try multiplatformRouter.navigateTo(routerArgs)
                        
                        multiplatformRouter.setReturnToPlatformHandler(self)
                        
                        let multiplatformViewController = multiplatformEngine.buildNewComponent().getViewController()
                        navigationController.pushViewController(multiplatformViewController, animated: true)
                        navigationController.setNavigationBarHidden(true, animated: true)
                    } catch {
                        print("Error on navigation channel: \(error)")
                    }
                }
                
            } else {
                try MultiplatformDemo.instance.initialize()
                testMainEngine(sender)
            }
            
        } catch MultiplatformDemoEngineError.engineAlreadyExists(let engineId) {
            print("Engine '\(engineId)' already exists")
        } catch {
            print("Error on instance an engine: \(error)")
        }
    }
    
    func returnToPlatform(_ routerResult: RouterResult?) {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
            navigationController.setNavigationBarHidden(false, animated: true)
        }
                
        if let result = routerResult?.result {
            showToast(message: result, font: .systemFont(ofSize: 12.0))
        }
    }
    
    @IBAction func stopEngines(_ sender: UIButton) {
        MultiplatformDemo.instance.destroy()
        showToast(message: "All engines were stopped", font: .systemFont(ofSize: 12.0))
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try MultiplatformDemo.instance.initialize()
        } catch MultiplatformDemoEngineError.engineAlreadyExists(let engineId) {
            print("Engine '\(engineId)' already exists")
        } catch {
            print("Error on instance an engine: \(error)")
        }
    }
    
    // MARK: Utils
    private func showToast(message : String, font: UIFont) {
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.size.height-100, width: 200, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
    
    // MARK: Constants
    let NEW_ENGINE_ID = "testing_new_engine"
}
