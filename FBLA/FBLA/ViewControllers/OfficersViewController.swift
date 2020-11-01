
//
//  OfficersViewController.swift
//  FBLA
//
//  Created by Mohamed Musa on 2/29/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit

class OfficersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var officers: [String] = ["Corey Crum", "Heela Maikhail", "Dev Patel", "Hadeer Awan", "James Dumoulin", "Janet Lu", "Helen Senwan", "Matthew Ramey", "Abigail Asegi"]
    var officerPositions: [String] = ["President", "Vice-President Membership", "Vice-President Fundraising", "Vice-President Competition", "Vice-President Communications", "Treasurer", "Secretary", "Historian", "Reporter"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return officerPositions.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customCell
        cell.name.text = officers[indexPath.row]
        cell.position.text = officerPositions[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.delegate = self
        tableView?.dataSource = self
        
        tableView?.separatorStyle = .none
    }
    @IBOutlet weak var tableView: UITableView?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
