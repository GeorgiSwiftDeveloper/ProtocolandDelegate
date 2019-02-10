//
//  ViewController.swift
//  Protocol
//
//  Created by Georgi Malkhasyan on 2/9/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, SendDataBackProtocl {
    @IBOutlet weak var firstLbl: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendDataBtn(_ sender: Any) {
        performSegue(withIdentifier: "goSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSecondVC" {
            let secondVC = segue.destination as? SecondVC
            secondVC?.data = firstTextField.text!
            firstTextField.text = ""
            secondVC?.delegate = self
        }
    }
    
    func sendDataBack(data: String) {
        firstLbl.text = data
    }
}

