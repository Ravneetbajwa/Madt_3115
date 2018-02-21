//
//  ViewController.swift
//  Day1
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblGender: UILabel!
    
    @IBOutlet weak var lblDob: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblTitle.text = "hello everyone"
       lblName.text = "Ravneet Kaur"
        lblGender.text = "Female"
        lblDob.text = "18Feb,1995"
        lblEmail.text = "ravubajwa@gmail.com"
        lblAddress.text = "146,luella cres"
        
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSubmit(_ sender: Any) {
        lblTitle.text = "Who clicked button"
            lblName.text = txtName.text
        
    }
    
    @IBOutlet weak var txtName: UITextField!
    
}

