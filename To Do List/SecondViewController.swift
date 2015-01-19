
//  SecondViewController.swift
//  To Do List
//
//  Created by K C on 1/13/15.
//  Copyright (c) 2015 K C. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var toDoItem: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(toDoItem.text)
        toDoItem.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        toDoItem.resignFirstResponder()
        return true
    }
}

