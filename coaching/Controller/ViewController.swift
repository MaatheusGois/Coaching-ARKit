//
//  ViewController.swift
//  coaching
//
//  Created by Matheus Silva on 14/02/20.
//  Copyright © 2020 Matheus Gois. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    let couching = Coaching()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
        
        //setup Coaching
        setupCouching()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
    }
    
    func setupCouching() {
        couching.setup(sceneView: self.sceneView)
        couching.addCoaching()
    }
}



