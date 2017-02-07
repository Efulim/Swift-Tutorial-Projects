//
//  ViewController.swift
//  Cat Year
//
//  Created by Utku Yeğen on 21/11/2016.
//  Copyright © 2016 Utku Yeğen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYears: UITextField!
    @IBOutlet weak var catYears: UILabel!
    
    @IBAction func calcCatYears(_ sender: Any) {
        if (humanYears.text?.isEmpty)! {
            humanYears.text = "0"
        }
        
        let mCatYears: Int = Int.init(humanYears.text!)! * 7
        catYears.text = String.init(stringInterpolationSegment: mCatYears)
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

