//
//  ViewControllerTWO.swift
//  passing-data
//
//  Created by Chase Klingel on 5/16/18.
//  Copyright © 2018 Chase Klingel. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class ViewControllerTwo: UIViewController {
    
    var delegate : CanReceive?
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
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
}
