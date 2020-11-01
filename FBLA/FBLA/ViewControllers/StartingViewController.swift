//
//  ViewController.swift
//  FBLA
//
//  Created by Mohamed Musa on 2/17/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class StartingViewController: UIViewController {


    @IBOutlet weak var imageBackground: UIImageView!
    @IBOutlet weak var FblaLongBrief: UILabel!
    
    @IBOutlet weak var aboutFBLA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func joinFBLA(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://docs.google.com/forms/d/e/1FAIpQLSf-2VrZLOT2pLQxe8wTrDLYuTw14gXqjmeANs2muR9HIFKxXg/viewform")!, options: [:], completionHandler: nil)
    }
    
    @IBOutlet weak var FBLATitle: UILabel!
    @IBAction func didSlide(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            UIView.transition(with: imageBackground,
            duration: 0.50,
            options: .transitionCrossDissolve,
            animations: { self.imageBackground.image = UIImage(named: "bgOne") },
            completion: nil)
            FBLATitle.isHidden = false;
            FblaLongBrief.isHidden = true;
            aboutFBLA.isHidden = true;
            
        }else{
            UIView.transition(with: imageBackground,
                        duration: 0.50,
            options: .transitionCrossDissolve,
            animations: { self.imageBackground.image = UIImage(named: "bgTwo") },
            completion: nil)
            FBLATitle.isHidden = true;
            FblaLongBrief.isHidden = false;
            aboutFBLA.isHidden = false;
        }
    }
    
}



