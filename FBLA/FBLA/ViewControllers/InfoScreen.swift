//
//  InfoScreen.swift
//  FBLA
//
//  Created by Mohamed Musa on 3/4/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class InfoScreen: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var reportBug: UIButton!
    @IBOutlet weak var questions: UIButton!
    @IBOutlet weak var contactUs: UIButton!
    @IBOutlet weak var terms: UIButton!
    @IBOutlet weak var faceBook: UIButton!
    @IBOutlet weak var instagram: UIButton!
    @IBOutlet weak var twitter: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isHidden = true
        // Do any additional setup after loading the view.
        faceBook.layer.cornerRadius = 8
        instagram.layer.cornerRadius = 8;
        twitter.layer.cornerRadius = 8;
        contactUs.setTitleColor(.white, for: .normal)
        terms.setTitleColor(.white, for: .normal)
        questions.setTitleColor(.white, for: .normal)
        contactUs.layer.cornerRadius = 4;
        terms.layer.cornerRadius = 4;
        questions.layer.cornerRadius = 4;
        reportBug.layer.cornerRadius = 4;
    }
    
    @IBAction func report(_ sender: Any) {
    UIApplication.shared.open(URL(string: "https://forms.gle/AoSKi3Jfn96ZMzuk6")!, options: [:], completionHandler: nil)
    }
    @IBAction func questionAnswer(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/pbl/virtual/faq/")!, options: [:], completionHandler: nil)
    }
    @IBAction func toggleLicense(_ sender: Any) {
        if textView.isHidden{
            textView.isHidden = false
        }else{
            textView.isHidden = true
        }
    }
    @IBAction func twitter(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com/fbla_national?lang=en")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func facebook(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/FutureBusinessLeaders/")!, options: [:], completionHandler: nil)
    }
    @IBAction func instagram(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.instagram.com/fbla_pbl/?hl=en")!, options: [:], completionHandler: nil)
    }
    @IBAction func contactUs(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.fbla-pbl.org/contact/")!, options: [:], completionHandler: nil)
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
