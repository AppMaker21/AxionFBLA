//
//  EventViewController.swift
//  FBLA
//
//  Created by Mohamed Musa on 3/2/20.
//  Copyright © 2020 Mohamed Musa. All rights reserved.
//

import UIKit
import KDCalendar
class Calendar: UIViewController, CalendarViewDelegate, CalendarViewDataSource, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var attendanceLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var attendeeArray: [String] = ["Mohamed Musa", "Ryan De Lopez", "Ghedion Beyen"]
    func headerString(_ date: Date) -> String? {
        return nil
    }
    
    func calendar(_ calendar: CalendarView, didSelectDate date: Date, withEvents events: [CalendarEvent]) {

    }
    
    
    @IBOutlet weak var calendarView: CalendarView!
    func calendar(_ calendar: CalendarView, canSelectDate date: Date) -> Bool {
        return true
    }
    
    func calendar(_ calendar: CalendarView, didScrollToMonth date: Date) {
        print("u scrolled")
    }
    func calendar(_ calendar: CalendarView, didDeselectDate date: Date) {
        print("deselect")
    }
    //may need fixing
    func calendar(_ calendar: CalendarView, didLongPressDate date : Date, withEvents events: [CalendarEvent]?) {
    
    if let events = events {
        for event in events {
            print("\t\"\(event.title)\" - Starting at:\(event.startDate)")
        }
    }
    
    let alert = UIAlertController(title: "Enter attendee", message: "Message", preferredStyle: .alert)
    
    alert.addTextField { (textField: UITextField) in
        textField.placeholder = "Attendance"
    }
    
    let addEventAction = UIAlertAction(title: "Add", style: .default, handler: { (action) -> Void in
        let title = alert.textFields?.first?.text
        self.attendeeArray.append(title ?? "error")
        self.tableView.reloadData()
        // here is where u add it to the tableView (the people that showed up)
        self.calendarView.addEvent(title!, date: date)
    })
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
    
    alert.addAction(addEventAction)
    alert.addAction(cancelAction)
    
    self.present(alert, animated: true, completion: nil)
    }
    
    func startDate() -> Date {
        
           var dateComponents = DateComponents()
                   dateComponents.month = -1
                   
                   let today = Date()
                   
                   let threeMonthsAgo = self.calendarView.calendar.date(byAdding: dateComponents, to: today)!
                   
                   return threeMonthsAgo
    }
    
    func endDate() -> Date {
        var dateComponents = DateComponents()
        
          dateComponents.month = 12
          let today = Date()
          
          let twoYearsFromNow = self.calendarView.calendar.date(byAdding: dateComponents, to: today)!
          
          return twoYearsFromNow
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let style = CalendarView.Style()
  style.cellShape                = .bevel(8.0)
  style.cellColorDefault         = UIColor.clear
  style.cellColorToday           = UIColor(red:1.00, green:0.84, blue:0.64, alpha:1.00)
        style.cellSelectedBorderColor  = UIColor.black
  style.cellEventColor           = UIColor(red:1.00, green:0.63, blue:0.24, alpha:1.00)
  style.headerTextColor          = UIColor.gray
  
        style.cellTextColorDefault     = UIColor.black
  style.cellTextColorToday       = UIColor.gray
  style.cellTextColorWeekend     = UIColor.black
  style.cellColorOutOfRange      = UIColor(red: 249/255, green: 226/255, blue: 212/255, alpha: 1.0)
      
  style.headerBackgroundColor    = UIColor.white
  style.weekdaysBackgroundColor  = UIColor.white
  style.firstWeekday             = .sunday
  
  style.locale                   = Locale(identifier: "en_US")
  
  style.cellFont = UIFont(name: "Helvetica", size: 20.0) ?? UIFont.systemFont(ofSize: 20.0)
  style.headerFont = UIFont(name: "Helvetica", size: 20.0) ?? UIFont.systemFont(ofSize: 20.0)
  style.weekdaysFont = UIFont(name: "Helvetica", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
  
  calendarView.style = style
  
  calendarView.dataSource = self
  calendarView.delegate = self
  
  calendarView.direction = .horizontal
  calendarView.multipleSelectionEnable = false
  calendarView.marksWeekends = true
  
  
  calendarView.backgroundColor = UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0)
calendarView.style.locale = Locale(identifier: "en_US")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
           let today = Date()
           self.calendarView.setDisplayDate(today, animated: false)
        calendarView.style.cellColorOutOfRange = UIColor(white: 0.0, alpha: 0.5)


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
//tableViewStuff
extension Calendar {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attendeeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "attendeeCell") as? attendanceCellTableViewCell
        cell?.attendee.text = attendeeArray[indexPath.row]

        return (cell)!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(exactly: 50.0)!
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            attendeeArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
