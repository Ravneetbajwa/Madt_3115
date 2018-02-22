//
//  SecondViewController.swift
//  FirstExample
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 moxDroid. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Message" , message: "Welcome to ios",preferredStyle: UIAlertControllerStyle.alert)
        
        //OK Button add
        let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            _ in print("Alert OK")
        })
        alert.addAction(actionOk)
        
        //Cancel Button add
        let actionCancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(actionCancel)
        
        //Ignore Button add
        let actionIgnore = UIAlertAction(title: "Ignore", style: UIAlertActionStyle.destructive, handler: nil)
        alert.addAction(actionIgnore)
        
        //Present Alert Dialog to the user
        self.present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func btnActionSheet(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Message" , message: "Welcome to ios",preferredStyle: UIAlertControllerStyle.actionSheet)
        
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
    
    
    @IBAction func btnNext(_ sender: UIButton) {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main" ,  bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "thirdVC") as! ThirdViewController
        nextVC.strHello = "Hello"
        self.navigationController?.pushViewController(nextVC, animated: true )
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
