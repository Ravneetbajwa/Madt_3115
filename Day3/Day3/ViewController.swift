//
//  ViewController.swift
//  Day3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var txtSlider: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func mySwich(_ sender: UISwitch) {
     
        var   imageName: String?
                if sender.isOn
                {
                    myTextField.text = "The switch is on"
                     imageName = "lion.png"
                }
                else{
                    myTextField.text = "The switch is off"
                    imageName = "gorilla.png"
                }
        myImage.image  = UIImage(named: imageName!)
    }
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        if mySwitch.isOn
        {
            myTextField.text = "The switch is off"
            mySwitch.setOn(false, animated: true)
        }
        else{
            myTextField.text = "The switch is on"
            mySwitch.setOn(true, animated: true)
        }
    }
    
    
    @IBAction func mySliderSlide(_ sender: UISlider) {
        txtSlider.text = String(Int(sender.value))
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
        
}

