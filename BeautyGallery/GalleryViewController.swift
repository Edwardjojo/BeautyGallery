//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by Edwardjojo on 1/4/15.
//  Copyright (c) 2015 Edwardjojo. All rights reserved.
//


import UIKit
import Social

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var imageName:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = imageName
        if imageName != nil{
            image.image = UIImage(named: imageName!)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func share(sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("share test")
        controller.addImage(image.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}

