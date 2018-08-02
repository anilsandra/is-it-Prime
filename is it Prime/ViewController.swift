//
//  ViewController.swift
//  is it Prime
//
//  Created by Anil Sandra on 2018-07-17.
//  Copyright © 2018 AnilSandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtInput: UITextField!
    @IBOutlet var oputLabel: UILabel!
    
    @IBAction func button(_ sender: Any) {
        
        if let userString = txtInput.text {
            let num = Int(userString)
            if let userNum = num {
            var isPrime = true
            if userNum == 1{
                isPrime = false
            }
            var i = 2
            while i < userNum{
                if userNum % i == 0{
                isPrime = false
                }
                i = i + 1
            }
                if isPrime{
                    oputLabel.text = "Yes, \(userNum) is Prime!"
                }else{
                    oputLabel.text = "Nope, \(userNum) isnt a Prime!"
                }
            
            
        }else{
            oputLabel.text="Please enter number"
        }
        }
    }
    @IBOutlet var eLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

