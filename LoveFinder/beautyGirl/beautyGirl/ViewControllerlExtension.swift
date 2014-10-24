//
//  ViewControllerlExtension.swift
//  beautyGirl
//
//  Created by 洪晨希 on 14-10-25.
//  Copyright (c) 2014年 洪晨希. All rights reserved.
//

import UIKit
extension ViewController:UIPickerViewDataSource{
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
    }
}
extension ViewController:UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return beauties[row]
    }
}