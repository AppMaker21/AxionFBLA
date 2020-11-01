//
//  UICollectionViewCell.swift
//  FBLA
//
//  Created by Mohamed Musa on 3/9/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class UICollectionView: UICollectionViewCell {
    
   class var reuseIdentifier: String {
        return "CollectionViewCellReuseIdentifier"
    }
    class var nibName: String {
        return "CollectionViewCell"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
