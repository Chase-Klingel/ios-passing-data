//
//  ViewController.swift
//  passing-data
//
//  Created by Chase Klingel on 5/16/18.
//  Copyright © 2018 Chase Klingel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    var data = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var forwardMessageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data
    }

    @IBAction func turnBlue(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
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
            let vcTwo = segue.destination as! ViewControllerTwo
            vcTwo.data = textField.text!
            vcTwo.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
}

