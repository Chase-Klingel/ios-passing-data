//
//  ViewControllerTWO.swift
//  passing-data
//
//  Created by Chase Klingel on 5/16/18.
//  Copyright © 2018 Chase Klingel. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    var data = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func sendDataBack(_ sender: Any) {
    }
}
