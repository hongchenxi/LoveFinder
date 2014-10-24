//
//  SecondViewController.swift
//  beautyGirl
//
//  Created by 洪晨希 on 14-10-25.
//  Copyright (c) 2014年 洪晨希. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
 
    var imageName:String?
    @IBOutlet weak var imagePicker: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if imageName != nil{
            imagePicker.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}