//
//  ViewController.swift
//  Day4
//
//  Created by MacStudent on 2018-02-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            print("1")
        }
        else if sender.selectedSegmentIndex == 1{
            print("2")
        }
        else{
            print("3")
        }
    }
    
    @IBAction func myStepper(_ sender: UIStepper) {
        
        print(sender.value)
    }
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func testSegment(_ sender: UISegmentedControl) {
        var strImage: String?
        if sender.selectedSegmentIndex == 0{
            strImage = "blue-love-icon.png"
        }
        else if sender.selectedSegmentIndex == 1{
             strImage = "blue-cute-icon.png"
        }
        else{
             strImage = "blue-cry-icon.png"
        }
        myImage.image = UIImage(named: strImage!)
    }
    
    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    
    var timer = Timer()
    var seconds = 10
    
    @objc func showProgress(){
        seconds -= 1
        if (seconds == 0)
        {
            myActivity.stopAnimating()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (showProgress), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

