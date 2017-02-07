//
//  ViewController.swift
//  Is It Prime
//
//  Created by Utku Yeğen on 25/11/2016.
//  Copyright © 2016 Utku Yeğen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var source: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func checkPrime(_ sender: Any) {
        var isPrime = true
        var i = 2
        var iSource = 1
        
        if source.text != "" {
            iSource = Int.init(source.text!)!
        }
        
        
        if iSource == 1 {
            isPrime = false
        }
        
        while i < iSource {
            if iSource % i == 0 {
                isPrime = false
            }
            
            i += 1
        }
        
        if isPrime {
            result.text = "\(iSource) is Prime!"
        } else {
            result.text = "\(iSource) is NOT Prime!"
        }
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

