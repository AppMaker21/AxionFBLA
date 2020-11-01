//
//  EventsViewController.swift
//  FBLA
//
//  Created by Mohamed Musa on 3/2/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var joinEvent: UIButton!
    var events: [String] = ["3-D Animation", "American Enterprise Project", "Banking & Financial Systems","Broadcast Journalism","Business Ethics (FBLA)","Business Financial Plan","Business Plan","Client Service (FBLA)","Coding & Programming","Community Service Project (FBLA)","Computer Game & Simulation Programming","Digital Video Production","E-business","Electronic Career Portfolio","Emerging Business Issues (FBLA)","Entrepreneurship","Future Business Leader","Global Business","Graphic Design","Help Desk (FBLA)","Hospitality Management (FBLA)","Impromptu Speaking (FBLA)","Introduction to Business Presentation","Introduction to Public Speaking","Job Interview (FBLA)","Local Chapter Annual Business Report (FBLA)","Management Decision Making","Management Information Systems","Marketing","Mobile Application Development (FBLA)","Network Design (FBLA)","Parliamentary Procedure (FBLA)","Partnership with Business Project","Public Service Announcement","Public Speaking (FBLA)","Publication Design","Sales Presentation (FBLA)","Social Media Campaign","Sports & Entertainment Management","Website Design (FBLA)"]
    

    
    @IBAction func join(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://forms.gle/w4uSetfewmHdf8Yf8")!, options: [:], completionHandler: nil)
    }
    var eventDates: [String] = ["March 9, 2020", "April 9, 2020", "May 9, 2020",]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventCell
        cell.eventName.text = events[indexPath.row]
        cell.date.text = "March 9, 2020"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
