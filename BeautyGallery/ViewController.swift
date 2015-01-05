//
//  ViewController.swift
//  BeautyGallery
//
//  Created by Edwardjojo on 1/4/15.
//  Copyright (c) 2015 Edwardjojo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPiker: UIPickerView!
    
    let beauties = ["0","1","2","3","4","5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPiker.dataSource = self
        beautyPiker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPiker.selectedRowInComponent(0)
            var imageName:String?
            switch index{
                case 0 : imageName = "0"
                case 1 : imageName = "1"
                case 2 : imageName = "2"
                case 3 : imageName = "3"
                case 4 : imageName = "4"
                case 5 : imageName = "5"
                default : imageName = nil
            }
            var vc = segue.destinationViewController as GalleryViewController
            vc.imageName = imageName
        }
    }
    
//go back using unwind segue
    @IBAction func close (segue:UIStoryboardSegue){
        print("close")
    }
}

