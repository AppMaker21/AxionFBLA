//
//  CustomSegmentedControl.swift
//  FBLA
//
//  Created by Mohamed Musa on 2/17/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit
@IBDesignable
class CustomSegmentedControl: UIView {
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    var borderColor: UIColor = .clear {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = layer.borderWidth/2
    }

}
