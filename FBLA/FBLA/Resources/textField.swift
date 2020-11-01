//
//  textField.swift
//  FBLA
//
//  Created by Mohamed Musa on 3/1/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class textField: UITextField {
    
    convenience override init(frame: CGRect) {
        self.init()
        setUp()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setUp(){
        layer.backgroundColor = UIColor.gray.cgColor
    }
}
