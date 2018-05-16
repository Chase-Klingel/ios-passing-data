//
//  ViewController.swift
//  passing-data
//
//  Created by Chase Klingel on 5/16/18.
//  Copyright © 2018 Chase Klingel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var forwardMessageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "sendDataForwards") {
            let destinationVC = segue.destination as! ViewControllerTwo
            destinationVC.data = textField.text!
        }
    }
}

