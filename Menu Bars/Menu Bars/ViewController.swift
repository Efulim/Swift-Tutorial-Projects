//
//  ViewController.swift
//  Menu Bars
//
//  Created by Utku Yeğen on 26/11/2016.
//  Copyright © 2016 Utku Yeğen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cSeconds = 210
    let cSubs = 10
    let cAdd = 10
    let cSecond = 1
    
    var timer = Timer()
    var seconds = 210

    @IBOutlet weak var lblTimer: UILabel!
    
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func startTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(cSecond), target: self, selector: #selector(ViewController.timerProcess), userInfo: nil, repeats: true)
    }
    
    @IBAction func subsctractTime(_ sender: Any) {
        changeTime(sec: cSubs, side: "-")
    }
    
    @IBAction func resetTime(_ sender: Any) {
        setTimeDefault()
    }
    
    @IBAction func addTime(_ sender: Any) {
        changeTime(sec: cAdd, side: "+")
    }
    
    func timerProcess() {
        if seconds > 0 {
            changeTime(sec: cSecond, side: "-")
        } else {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setTimeDefault()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setTimeDefault() {
        seconds = cSeconds
        lblTimer.text = String.init(seconds)
    }
    
    func changeTime(sec: Int, side: Character) {
        if side == "+" {
            seconds += sec
        } else if side == "-" {
            seconds -= sec
        }
        lblTimer.text = String.init(seconds)
    }

}

