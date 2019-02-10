//
//  SecondVC.swift
//  Protocol
//
//  Created by Georgi Malkhasyan on 2/9/19.
//  Copyright © 2019 Malkhasyan. All rights reserved.
//

import UIKit

protocol SendDataBackProtocl {
    func sendDataBack(data: String)
}

class SecondVC: UIViewController {

    @IBOutlet weak var secondLbl: UILabel!
    @IBOutlet weak var secondTextField: UITextField!
    
    
    var data: String = ""
    
    var delegate: SendDataBackProtocl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       secondLbl.text = data
        
    }
    

    @IBAction func sendDataBackBtn(_ sender: Any) {
        delegate?.sendDataBack(data: secondTextField.text!)
        dismiss(animated: true, completion: nil)
    }
  

}
