//
//  ViewController.swift
//  FirstExample
//
//  Created by moxDroid on 2017-10-12.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func validateUser(){
        if(txtUserEmail.text == "admin@gmail.com" && txtPassword.text == "admin123")
        {
            print("Hello, My First Click : ", txtUserEmail.text! )
            
            let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main" ,  bundle: nil)
            let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
            self.present(nextVC, animated: true, completion: nil)
            
        }
        else{
            let actionSheet = UIAlertController(title: "Error" , message: "invalid username/password",preferredStyle: UIAlertControllerStyle.actionSheet)
            
            //OK Button add
            let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
                _ in print("Alert OK")
            })
            actionSheet.addAction(actionOk)
            
            //Cancel Button add
            let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            actionSheet.addAction(actionCancel)
            
            //Ignore Button add
            let actionIgnore = UIAlertAction(title: "Ignore", style: UIAlertActionStyle.destructive, handler: nil)
            actionSheet.addAction(actionIgnore)
            
            //Present Alert Dialog to the user
            self.present(actionSheet, animated: true, completion: nil)
        }
        
    }

    @IBAction func loginClick(_ sender: UIButton) {
        validateUser()
       
    }
}

