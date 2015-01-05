//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by Edwardjojo on 1/4/15.
//  Copyright (c) 2015 Edwardjojo. All rights reserved.
//


import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var imageName:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if imageName != nil{
            image.image = UIImage(named: imageName!)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

