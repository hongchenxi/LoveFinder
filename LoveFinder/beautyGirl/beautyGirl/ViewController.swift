//
//  ViewController.swift
//  beautyGirl
//
//  Created by 洪晨希 on 14-10-25.
//  Copyright (c) 2014年 洪晨希. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    var imageName :String?
    let beauties = ["范冰冰","日本妹子","韩国妹子","李冰冰","王菲","杨幂","周迅"]
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.delegate = self
        beautyPicker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
//    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return beauties.count
//    }
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
//        return beauties[row]
//    }
//    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
//        
//        switch component{
//        case 0:
//            imageName = "fangbingbing"
//        case 1:
//            imageName = "japanese"
//        case 2:
//            imageName = "korean"
//        case 3:
//            imageName = "libingbing"
//        case 4:
//            imageName = "wangfei"
//        case 5:
//            imageName = "yangmi"
//        case 6 :
//            imageName = "zhouxun"
//        default:
//            imageName = nil
//
//        }
//    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToSegue"{
            var imageName :String?
            let index = beautyPicker.selectedRowInComponent(0)
                switch index{
                    case 0:
                        imageName = "fangbingbing"
                    case 1:
                        imageName = "japanese"
                    case 2:
                        imageName = "korean"
                    case 3:
                        imageName = "libingbing"
                    case 4:
                        imageName = "wangfei"
                    case 5:
                        imageName = "yangmi"
                    case 6 :
                        imageName = "zhouxun"
                    default:
                        imageName = nil
            
                }
            var vc = segue.destinationViewController as SecondViewController
                vc.imageName = imageName
                println("当前的imageName====\(imageName)")
            vc.imageName = imageName
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindTo(segue: UIStoryboardSegue){
    
    }

}

