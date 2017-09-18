//
//  ColorPickerVC.swift
//  color-magic
//
//  Created by Justin  Doty on 9/17/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delagate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonWasPressed(sender: UIButton) {
        
        delagate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text!)!)
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    

}
