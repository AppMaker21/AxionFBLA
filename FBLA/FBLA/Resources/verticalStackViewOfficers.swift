//
//  verticalStackViewOfficers.swift
//  FBLA
//
//  Created by Mohamed Musa on 2/29/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class verticalStackViewOfficers: UIView {
 
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      setupView()
    }
    
    private func setupView() {
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.cornerRadius = 8
        setUpShadows()
        
    }
    private func setUpShadows(){
        layer.masksToBounds = false
       layer.shadowColor = UIColor.black.cgColor
       layer.shadowOpacity = 0.2
       layer.shadowOffset = CGSize(width: 2, height: 2)
       layer.shadowRadius = 6
       layer.shouldRasterize = true

    }
  
}
