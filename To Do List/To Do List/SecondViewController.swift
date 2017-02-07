//
//  SecondViewController.swift
//  To Do List
//
//  Created by Utku Yeğen on 17/01/2017.
//  Copyright © 2017 Utku Yeğen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemText: UITextField!
    
    @IBAction func Add(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        var items: [String]
        if let tmpItem = itemObject as? [String] {
            items = tmpItem
            items.append(itemText.text!)
            print(items)
        } else {
            items = [itemText.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        itemText.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

