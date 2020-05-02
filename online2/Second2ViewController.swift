//
//  Second2ViewController.swift
//  online2
//
//  Created by Ngoduc on 4/28/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class Second2ViewController: UIViewController {
    
    
    
    @IBOutlet weak var nhanthuongBT: UIButton!
    @IBOutlet weak var quaysoBT: UIButton!
    @IBOutlet weak var hiLable: UILabel!
    @IBOutlet weak var phoneTextFiel: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    var passDATA: ((Number) -> Void)?
    
    var hiText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nhanthuongBT.isHidden = true
        nhanthuongBT.isEnabled = false
        
        title = "Screen2"
        if let text = hiText {
            hiLable.text = "số bạn vừa gửi có phải là \(text) ?"
        }
     
    }

    @IBAction func Quayso(_ sender: Any) {
        quaysoBT.isHidden = true
        quaysoBT.isEnabled = false
        nhanthuongBT.isHidden = false
        nhanthuongBT.isEnabled = true
        
    }
    
    
    @IBAction func nhanthuong(_ sender: Any) {
        
        guard let so = hiText  else {
            return
        }
        
        passDATA?(Number(so: so))
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
