//
//  ViewController.swift
//  HowToUseTheCameraInYouriOSApp
//
//  Created by Ramill Ibragimov on 24.12.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func camera(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraView = UIImagePickerController()
            cameraView.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            cameraView.sourceType = .camera
            self.present(cameraView, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

