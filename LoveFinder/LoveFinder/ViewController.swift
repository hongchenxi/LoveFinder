//
//  ViewController.swift
//  LoveFinder
//
//  Created by 洪晨希 on 14-10-24.
//  Copyright (c) 2014年 洪晨希. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var datePick: UIDatePicker!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var allResult: UITextView!
    @IBOutlet weak var hasHouse: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func heightChanged(sender: UISlider) {
        var i = Int(sender.value)
        sender.value = Float(i)
        heightText.text = "\(i)厘米"
        
        
    }

    @IBAction func okTap(sender: UIButton) {
        
       
        let genderText = gender.selectedSegmentIndex==0 ? "高富帅" : "白富美"
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        let components = gregorian?.components(NSCalendarUnit.YearCalendarUnit, fromDate: datePick.date, toDate: now, options: NSCalendarOptions(0))
        let age = components?.year
        let huose = hasHouse.on ? "有房" : "没房"
        
        
         allResult.text = "姓名：\(name.text),性别：\(genderText),身高：\(heightText.text!),\(age!)岁,\(huose)"
    }
}

