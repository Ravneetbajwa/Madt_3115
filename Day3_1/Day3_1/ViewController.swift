//
//  ViewController.swift
//  Day3_1
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    

    @IBOutlet weak var myCountryPicker: UIPickerView!
    
    var countryNameList = ["India","Canada","USA","UK","Pakistan","France","Sri Lanka","Mexico","Bhutan","China","Singapor","South Africa"]
    
    var studentNameList = ["a","b","c","d","e","f","g"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCountryPicker.delegate = self
        myCountryPicker.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0)
        {
            return countryNameList.count
        }
        else
        {
            return studentNameList.count
        }
        return countryNameList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0)
        {
            return countryNameList[row]
        }
        else
        {
            return studentNameList[row]
        }
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(countryNameList[row])
    }
}

