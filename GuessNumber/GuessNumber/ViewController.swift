//
//  ViewController.swift
//  GuessNumber
//
//  Created by 江威德 on 2016/4/23.
//  Copyright © 2016年 David Chiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let number:Int = 23
    var times = 1
    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var txtNumberField: UITextField!
    
    @IBAction func btnCheckNumber(sender: AnyObject) {

        if ( times < 7 ) {
         
            let guess:Int? = Int(txtNumberField.text!)
            
            if ( guess == number) {
                lbResult.text = "答對了";
                return;
            }
            else {
                lbResult.text = "答錯了\(times)次";
            }
        }
        else {
            lbResult.text = "答錯超過6次";
            times = 1;
            return;
        }
        
        times += 1;
        
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

