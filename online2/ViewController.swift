//
//  ViewController.swift
//  online2
//
//  Created by Ngoduc on 4/28/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ketquaLable: UILabel!
    let secondVC =  Second2ViewController()
    @IBOutlet weak var numberLable: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Nhập một số bất kỳ"
        secondVC.passDATA = { [weak self] data in
            guard let strongLeft = self else {
                return
            }
  
            if Int(data.so)! > 100 {
                self!.ketquaLable.text = "Chúc bạn may mắn lần sau"
            } else {
                self!.ketquaLable.text = "Bạn đã trúng thưởng"
            }
        
        }
        
    }
    
    @IBAction func guiSo(_ sender: Any) {
        
        secondVC.hiText = numberLable.text
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}


