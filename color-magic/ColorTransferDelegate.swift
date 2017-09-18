//
//  ColorTransferDelegate.swift
//  color-magic
//
//  Created by Justin  Doty on 9/17/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import Foundation
import UIKit


protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
    
    
}
