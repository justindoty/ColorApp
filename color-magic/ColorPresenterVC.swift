//
//  ViewController.swift
//  color-magic
//
//  Created by Justin  Doty on 9/14/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    @IBOutlet weak var ColorNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        ColorNameLabel.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delagate = self
            
        }
        
    }
    
}

