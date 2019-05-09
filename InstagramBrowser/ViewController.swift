//
//  ViewController.swift
//  InstagramBrowser
//
//  Created by com on 2/19/1398 AP.
//  Copyright © 1398 KMHK. All rights reserved.
//

import UIKit
import InstagramImagePicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let imgPicker = OLInstagramImagePickerController(clientId: "647e32caf23f47f1ba3bdb181067b44e",
                                                         secret: "9b814c877fd0494a9e49ad8d5daa22bb ",
                                                         redirectURI: "InstaBrowser://instagram-callbak")
        imgPicker?.delegate = self
        self.present(imgPicker!, animated: false, completion: nil)
    }

    @IBAction func btnPickerTapped(_ sender: Any) {
        
    }
    
}


// MARK: -
extension ViewController: OLInstagramImagePickerControllerDelegate,
UINavigationControllerDelegate{
    func instagramImagePicker(_ imagePicker: OLInstagramImagePickerController!, didFailWithError error: Error!) {
//        self.dismiss(animated: true, completion: nil)
    }
    
    func instagramImagePicker(_ imagePicker: OLInstagramImagePickerController!, didFinishPickingImages images: [Any]!) {
//        self.dismiss(animated: true, completion: nil)
    }
    
    func instagramImagePickerDidCancelPickingImages(_ imagePicker: OLInstagramImagePickerController!) {
//        self.dismiss(animated: true, completion: nil)
    }
}
